Blockly.Blocks['run_status'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Статус коптера");
    this.setOutput(true, "Boolean");
    this.setColour(20);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['board_number'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Бортовой номер");
    this.setOutput(true, "String");
    this.setColour(20);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['time'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Время с момента включения");
    this.setOutput(true, "Number");
    this.setColour(20);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['delta_time'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Разница между глобальным и локальным временем");
    this.setOutput(true, "Number");
    this.setColour(20);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['launch_time'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Время запуска для системы навигации");
    this.setOutput(true, "Number");
    this.setColour(20);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};