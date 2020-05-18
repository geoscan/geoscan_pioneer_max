Blockly.Python['board_change'] = function(block) {
  var value_nub = Blockly.Python.valueToCode(block, 'NUB', Blockly.Python.ORDER_ATOMIC);
  var value_r = Blockly.Python.valueToCode(block, 'R', Blockly.Python.ORDER_ATOMIC);
  var value_g = Blockly.Python.valueToCode(block, 'G', Blockly.Python.ORDER_ATOMIC);
  var value_b = Blockly.Python.valueToCode(block, 'B', Blockly.Python.ORDER_ATOMIC);
  // TODO: Assemble Python into code variable.
  var code = 'led_b.changeColor('+value_nub+','+value_r+','+value_g+','+value_b+')\n';
  return code;
};

Blockly.Python['module_change'] = function(block) {
  var value_num = Blockly.Python.valueToCode(block, 'NUM', Blockly.Python.ORDER_ATOMIC);
  var value_r = Blockly.Python.valueToCode(block, 'R', Blockly.Python.ORDER_ATOMIC);
  var value_g = Blockly.Python.valueToCode(block, 'G', Blockly.Python.ORDER_ATOMIC);
  var value_b = Blockly.Python.valueToCode(block, 'B', Blockly.Python.ORDER_ATOMIC);
  // TODO: Assemble Python into code variable.
  var code = 'led_m.changeColor('+value_nub+','+value_r+','+value_g+','+value_b+')\n';
  return code;
};

Blockly.Python['board_all'] = function(block) {
  var value_r = Blockly.Python.valueToCode(block, 'R', Blockly.Python.ORDER_ATOMIC);
  var value_g = Blockly.Python.valueToCode(block, 'G', Blockly.Python.ORDER_ATOMIC);
  var value_b = Blockly.Python.valueToCode(block, 'B', Blockly.Python.ORDER_ATOMIC);
  // TODO: Assemble Python into code variable.
  var code = 'led_b.changeAllColor('+value_r+','+value_g+','+value_b+')\n';
  return code;
};

Blockly.Python['module_all'] = function(block) {
  var value_r = Blockly.Python.valueToCode(block, 'R', Blockly.Python.ORDER_ATOMIC);
  var value_g = Blockly.Python.valueToCode(block, 'G', Blockly.Python.ORDER_ATOMIC);
  var value_b = Blockly.Python.valueToCode(block, 'B', Blockly.Python.ORDER_ATOMIC);
  // TODO: Assemble Python into code variable.
  var code = 'led_m.changeAllColor('+value_r+','+value_g+','+value_b+')\n';
  return code;
};