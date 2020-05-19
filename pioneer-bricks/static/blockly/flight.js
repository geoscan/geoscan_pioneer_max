Blockly.Python['update_yaw'] = function(block) {
  var value_yaw = Blockly.Python.valueToCode(block, 'YAW', Blockly.Python.ORDER_ATOMIC);
  // TODO: Assemble Python into code variable.
  var code = 'flight.updateYaw('+value_yaw+')\n';
  return code;
};

Blockly.Python['go_to_point'] = function(block) {
  var value_lat = Blockly.Python.valueToCode(block, 'LAT', Blockly.Python.ORDER_ATOMIC);
  var value_long = Blockly.Python.valueToCode(block, 'LONG', Blockly.Python.ORDER_ATOMIC);
  var value_alt = Blockly.Python.valueToCode(block, 'ALT', Blockly.Python.ORDER_ATOMIC);
  // TODO: Assemble Python into code variable.
  var code = 'flight.goToPoint('+value_lat+','+value_long+','+value_alt+')\n';
  return code;
};

Blockly.Python['go_local_point'] = function(block) {
  var value_x = Blockly.Python.valueToCode(block, 'X', Blockly.Python.ORDER_ATOMIC);
  var value_y = Blockly.Python.valueToCode(block, 'Y', Blockly.Python.ORDER_ATOMIC);
  var value_z = Blockly.Python.valueToCode(block, 'Z', Blockly.Python.ORDER_ATOMIC);
  var value_time = Blockly.Python.valueToCode(block, 'TIME', Blockly.Python.ORDER_ATOMIC);
  // TODO: Assemble Python into code variable.
  var code = 'flight.goToLocalPoint('+value_x+','+value_y+','+value_z+','+value_time+')\n';
  return code;
};