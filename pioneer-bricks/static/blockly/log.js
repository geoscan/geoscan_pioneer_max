Blockly.Python['log_last'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'log.lastMsgs()\n';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};

Blockly.Python['log_all'] = function(block) {
  // TODO: Assemble Python into code variable.
  var code = 'log.allMsgs()\n';
  // TODO: Change ORDER_NONE to the correct strength.
  return [code, Blockly.Python.ORDER_NONE];
};