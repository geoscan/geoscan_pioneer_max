Blockly.Blocks['sleep'] = {
  init: function() {
    this.appendValueInput("NAME")
        .setCheck("Number")
        .appendField("Заснуть на");
    this.appendDummyInput()
        .appendField("секунд");
    this.setInputsInline(true);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(180);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};