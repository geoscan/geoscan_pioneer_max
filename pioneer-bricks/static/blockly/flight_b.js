Blockly.Blocks['update_yaw'] = {
  init: function() {
    this.appendValueInput("YAW")
        .setCheck("Number")
        .appendField("Обновить угол на");
    this.appendDummyInput()
        .appendField("радиан");
    this.setInputsInline(true);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(210);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['go_to_point'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Лететь в глобальные координаты");
    this.appendValueInput("LAT")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Широта");
    this.appendValueInput("LONG")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Долгота");
    this.appendValueInput("ALT")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_CENTRE)
        .appendField("Высота над уровнем моря");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(210);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['go_local_point'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Лететь в локальные координаты");
    this.appendValueInput("X")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField("X");
    this.appendValueInput("Y")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField("Y");
    this.appendValueInput("Z")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField("Z");
    this.appendValueInput("TIME")
        .setCheck("Number")
        .setAlign(Blockly.ALIGN_RIGHT)
        .appendField("Время");
    this.setInputsInline(false);
    this.setPreviousStatement(true, null);
    this.setNextStatement(true, null);
    this.setColour(210);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};