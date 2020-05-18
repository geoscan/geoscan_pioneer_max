Blockly.Blocks['board_change'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Поменять цвет лампочки на плате");
    this.appendValueInput("NUB")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Номер лампочки");
    this.appendValueInput("R")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Красный");
    this.appendValueInput("G")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Зеленый");
    this.appendValueInput("B")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Синий");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(160);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['module_change'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Поменять цвет лампочки на модуле");
    this.appendValueInput("NUM")
        .setCheck("Number")
        .appendField("Номер лампочки");
    this.appendValueInput("R")
        .setCheck("Number")
        .appendField("Красный");
    this.appendValueInput("G")
        .setCheck("Number")
        .appendField("Зеленый");
    this.appendValueInput("B")
        .setCheck("Number")
        .appendField("Синий");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(160);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['board_all'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Поменять цвет всех лампочек на плате");
    this.appendValueInput("R")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Красный");
    this.appendValueInput("G")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Зеленый");
    this.appendValueInput("B")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Синий");
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(160);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['module_all'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Поменять цвет всех лампочек на модуле");
    this.appendValueInput("R")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Красный");
    this.appendValueInput("G")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Зеленый");
    this.appendValueInput("B")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Синий");
    this.setColour(160);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};