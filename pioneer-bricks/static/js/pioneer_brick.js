function showCover() {
	let coverDiv = document.createElement('div');
	coverDiv.id = 'cover-div';

	// убираем возможность прокрутки страницы во время показа модального окна с формой
	document.body.style.overflowY = 'hidden';

	document.body.append(coverDiv);
}

function showCover2() {
	let coverDiv = document.createElement('div2');
	coverDiv.id = 'cover-div2';

	// убираем возможность прокрутки страницы во время показа модального окна с формой
	document.body.style.overflowY = 'hidden';

	document.body.append(coverDiv);
}

function hideCover() {
	document.getElementById('cover-div').remove();
	document.body.style.overflowY = '';
}

function hideCover2() {
	document.getElementById('cover-div2').remove();
	document.body.style.overflowY = '';
}

function showPrompt(callback) {
	showCover();
	let form = document.getElementById('prompt-form');
	let container = document.getElementById('prompt-form-container');

	function complete(value) {
	  hideCover();
	  container.style.display = 'none';
	  document.onkeydown = null;
	  callback(value);
	}

	form.onsubmit = function() {
	  let value = form.text.value;
	  if (value == '') return false; // игнорируем отправку пустой формы

	  complete(value);
	  return false;
	};

	form.cancel.onclick = function() {
	  complete(null);
	};

	document.onkeydown = function(e) {
	  if (e.key == 'Escape') {
		complete(null);
	  }
	};

	let lastElem = form.elements[form.elements.length - 1];
	let firstElem = form.elements[0];

	lastElem.onkeydown = function(e) {
	  if (e.key == 'Tab' && !e.shiftKey) {
		firstElem.focus();
		return false;
	  }
	};

	firstElem.onkeydown = function(e) {
	  if (e.key == 'Tab' && e.shiftKey) {
		lastElem.focus();
		return false;
	  }
	};

	container.style.display = 'block';
	form.elements.text.focus();
}

function showPrompt2(){
	showCover2()
	let form = document.getElementById('prompt-form-2');
	let container = document.getElementById('prompt-form-container-2');
	document.getElementById("cancel_open").onclick = function(){
		hideCover2()
		container.style.display = 'none';
	  	document.onkeydown = null;
	};
	container.style.display = 'block';
	form.elements.text.focus();
}

document.getElementById('save').onclick = function() {
	showPrompt(function(value) {
	  if(value!=null){
		postSave(value)
	  }
	});
};



function postCode(){
	var code = Blockly.Python.workspaceToCode(workspace);
	var xml = Blockly.Xml.workspaceToDom(workspace);
	var xml_text = Blockly.Xml.domToText(xml);
	$.post("/run", 
			{
				code: code,
				xml_text: xml_text
			},
			onSuccess);
	function onSuccess(){
		return;
	}
}

function postNew(){
	$.post("/new",
	{},
	onSuccess
	)
	function onSuccess(){
		return;
	}
};

function postOpen(name){
	var xml = Blockly.Xml.workspaceToDom(workspace);
	var xml_text = Blockly.Xml.domToText(xml);
	$.post("/open",
	{
		name: name,
		xml_text: xml_text
	},
	onSuccess
	)
	function onSuccess(data){
		if(data.error==1){
			window.alert("Такого проекта не существует, или он был удален")
		}
		return;
	}
}

function getFiles(){
	$.get("/files",
		onSuccess
	);
	function onSuccess(data){
		names=data.name.split(",");
		$("p").remove();
		var l=`<p>Открыть проект:</p>`
		$("#file_list").append(l);
		if(names!="#@#"){
			var buttons=``;
			for (n of names){
				buttons=buttons+`<p><button href=\"http://10.0.0.31:2020/\" class=\"btn btn-outline-primary\" onclick=\"postOpen('${n}')">${n}</button></p>`;
			};
			$("#file_list").append(buttons);
		}else{
			$("#file_list").append("<p>Проекты не найдены</p>")
		};
		var cancel=`<p><button class="btn btn-outline-danger text-truncate" display="inline-block" id="cancel_open" name="cancel" value="Отмена" type="button">Закрыть</button></p>`
		$("#file_list").append(cancel);
		showPrompt2();
		return;
	};
}

function postSave(name){
	var code = Blockly.Python.workspaceToCode(workspace);
	var xml = Blockly.Xml.workspaceToDom(workspace);
	var xml_text = Blockly.Xml.domToText(xml);
	$.post("/save",
	{
		xml_text: xml_text,
		name: name,
		code: code
	},
	onSuccess
	);
	function onSuccess(data){
		if(data.status==0){
			window.alert("Программа сохранена");
		}else if(data.status==1){
			window.alert("Не допустимое имя проекта");
		}
		return;
	}
}

var blocklyArea = document.getElementById('blocklyArea');
var blocklyDiv = document.getElementById('blocklyDiv');
var workspace = Blockly.inject(blocklyDiv,{toolbox: document.getElementById('toolbox'), scrollbars: true});
var text=document.getElementById("work").getAttribute("name")
if (text !=""){
	var xml = Blockly.Xml.textToDom(text);
	Blockly.Xml.domToWorkspace(xml, workspace);
};
var onresize = function(e) {
	// Compute the absolute coordinates and dimensions of blocklyArea.
	var element = blocklyArea;
	var x = 0;
	var y = 0;
	do {
		x += element.offsetLeft;
		y += element.offsetTop;
		element = element.offsetParent;
	} while (element);
	// Position blocklyDiv over blocklyArea.
	blocklyDiv.style.left = x + 'px';
	blocklyDiv.style.top = y + 'px';
	blocklyDiv.style.width = blocklyArea.offsetWidth + 'px';
	blocklyDiv.style.height = blocklyArea.offsetHeight + 'px';
	Blockly.svgResize(workspace);
};
window.addEventListener('resize', onresize, false);
onresize();
Blockly.svgResize(workspace);

setInterval(function(){
	$.get("/print",{},function(data){
		if(data.msg!="none"){
			$("#terminal").append(`<li class="list-group-item">${data.msg}</li>`);
		};
	});
}, 1000)
