import subprocess
import shlex
import sys
import signal
import psutil
import roslaunch

def kill_child_processes(parent_pid, sig=signal.SIGTERM):
    try:
        parent = psutil.Process(parent_pid)
    except psutil.NoSuchProcess:
        return
    children = parent.children(recursive=True)
    for process in children:
        process.send_signal(sig)

class Roscore(object):
    __initialized = False
    def __init__(self):
        if Roscore.__initialized:
            raise Exception("You can't create more than 1 instance of Roscore.")
        Roscore.__initialized = True
        self.roscore_pid=0
        self.launch_status=0
    def run(self):
        try:
            self.roscore_process = subprocess.Popen(['roscore'])
            self.roscore_pid = self.roscore_process.pid
        except OSError as e:
            sys.stderr.write('roscore could not be run')
            raise e
    def terminate(self):
        try:
            kill_child_processes(self.roscore_pid)
            self.roscore_process.terminate()
            self.roscore_process.wait()
            Roscore.__initialized = False
        except:
            pass

    def launch_start(self):
        node = roslaunch.core.Node("gs_nodes", "ros_serial_node.py", args="_port:=/dev/ttyS0")
        def dummy_function(): pass
        roslaunch.pmon._init_signal_handlers = dummy_function
        launch = roslaunch.scriptapi.ROSLaunch()
        launch.start()
        self.process=launch.launch(node)
        self.launch_status=1

    def launch_finish(self):
        if(self.launch_status==1):
            self.process.stop()
            self.launch_status=0
    

