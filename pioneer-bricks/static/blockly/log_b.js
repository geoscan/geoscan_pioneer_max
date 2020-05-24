Blockly.Blocks['log_last'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Последнее сообщение лога");
    this.setOutput(true, "String");
    this.setColour(330);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['log_all'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Все сообщения лога");
    this.setOutput(true, "Array");
    this.setColour(330);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};