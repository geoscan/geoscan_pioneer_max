Blockly.Blocks['lps_position'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Координаты в системе навигации");
    this.setOutput(true, "Array");
    this.setColour(65);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['lps_velocity'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Скорость в системе навигации");
    this.setOutput(true, "Array");
    this.setColour(65);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['lps_yaw'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Угол поворота в системе навигации");
    this.setOutput(true, "Number");
    this.setColour(65);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['gyro'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Данные гироскопа");
    this.setOutput(true, "Array");
    this.setColour(65);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['accel'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Данные акселерометра");
    this.setOutput(true, "Array");
    this.setColour(65);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['orientation'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Данные положение");
    this.setOutput(true, "Array");
    this.setColour(65);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['altitude'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Данные высоты по барометру");
    this.setOutput(true, "Number");
    this.setColour(65);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};

Blockly.Blocks['range'] = {
  init: function() {
    this.appendDummyInput()
        .appendField("Данные c датчиков расстояния");
    this.setOutput(true, "Array");
    this.setColour(65);
 this.setTooltip("");
 this.setHelpUrl("");
  }
};