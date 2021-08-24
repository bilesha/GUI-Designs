// Let's create a simple meter

//import meter library

import meter.*;

//IMPORT PROCESSING.serial.*;
import processing.serial.*;

Serial port; //define a port

Meter MQ2, MQ131, MQ9, MQ135, Humidity, Temperature, Dust ;

void setup(){
  //First we need to create an empty window
  size(1500,1000); //size of the window
  background(0,0,0); //background color of the window(R,G,B)
  
  //create new port
  port = new Serial(this, "COM3", 9600); //NAME of the port
  
  // lets add a default meter to empty window
  
  MQ2 = new Meter(this, 25, 60); //here 25, 10 are x and y coordinates of meter's upper left corner
  
  MQ2.setTitleFontSize(20);
  MQ2.setTitleFontName("Arial bold");
  MQ2.setTitle("MQ2 Smoke/Alcohol %");
  
  ///Change meter scale values
  String[] scaleLabels = {"0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"};
  MQ2.setScaleLabels(scaleLabels);
  MQ2.setScaleFontSize(18);
  MQ2.setScaleFontName("Times new roman bold");
  MQ2.setScaleFontColor(color(200,30,70));
  
  // we can also display the value of the meter
  MQ2.setDisplayDigitalMeterValue(true);
  
  //lets do some more modifications so our meter looks nice
  
  MQ2.setArcColor(color(141, 113, 178));
  MQ2.setArcThickness(15);
  
  MQ2.setMaxScaleValue(1
  +00);
  
  MQ2.setMinInputSignal(0);
  MQ2.setMaxInputSignal(100);
  
  MQ2.setNeedleThickness(3);
  
  // lets take some reference from first meter
  int mx = MQ2.getMeterX(); // x coordinate of m
  int my = MQ2.getMeterY(); // y coordinate of m
  int mw = MQ2.getMeterWidth();
  
  MQ131 = new Meter(this, mx + mw + 20, my );
  
  MQ131.setTitleFontSize(20);
  MQ131.setTitleFontName("Arial bold");
  MQ131.setTitle("MQ131 Ozone %");
  
  ///Change meter scale values
  String[] scaleLabels2 = {"0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"};
  MQ131.setScaleLabels(scaleLabels2);
  MQ131.setScaleFontSize(18);
  MQ131.setScaleFontName("Times new roman bold");
  MQ131.setScaleFontColor(color(200,30,70));
  
  // we can also display the value of the meter
  MQ131.setDisplayDigitalMeterValue(true);
  
  //lets do some more modifications so our meter looks nice
  
  MQ131.setArcColor(color(141, 113, 178));
  MQ131.setArcThickness(15);
  
  MQ131.setMaxScaleValue(100);
  
  MQ131.setMinInputSignal(0);
  MQ131.setMaxInputSignal(100);
  
  MQ131.setNeedleThickness(3);
  
  MQ9 = new Meter(this, mx, my + 270 );
  
  MQ9.setTitleFontSize(20);
  MQ9.setTitleFontName("Arial bold");
  MQ9.setTitle("MQ9 Carbon Monoxide/LPG %");
  
  ///Change meter scale values
  String[] scaleLabels3 = {"0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"};
  MQ9.setScaleLabels(scaleLabels3);
  MQ9.setScaleFontSize(18);
  MQ9.setScaleFontName("Times new roman bold");
  MQ9.setScaleFontColor(color(200,30,70));
  
  // we can also display the value of the meter
  MQ9.setDisplayDigitalMeterValue(true);
  
  //lets do some more modifications so our meter looks nice
  
  MQ9.setArcColor(color(141, 113, 178));
  MQ9.setArcThickness(15);
  
  MQ9.setMaxScaleValue(100);
  
  MQ9.setMinInputSignal(0);
  MQ9.setMaxInputSignal(100);
  
  MQ9.setNeedleThickness(3);
  
  MQ135 = new Meter(this, mx + mw + 20, my + 270 );
  
  MQ135.setTitleFontSize(20);
  MQ135.setTitleFontName("Arial bold");
  MQ135.setTitle("MQ135 NH3/NOX/BENZENE/CO2 %");
  
  ///Change meter scale values
  String[] scaleLabels4 = {"0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"};
  MQ135.setScaleLabels(scaleLabels4);
  MQ135.setScaleFontSize(18);
  MQ135.setScaleFontName("Times new roman bold");
  MQ135.setScaleFontColor(color(200,30,70));
  
  // we can also display the value of the meter
  MQ135.setDisplayDigitalMeterValue(true);
  
  //lets do some more modifications so our meter looks nice
  
  MQ135.setArcColor(color(141, 113, 178));
  MQ135.setArcThickness(15);
  
  MQ135.setMaxScaleValue(100);
  
  MQ135.setMinInputSignal(0);
  MQ135.setMaxInputSignal(100);
  
  MQ135.setNeedleThickness(3);
  
  Humidity = new Meter(this, mx, my + 540); //here 25, 10 are x and y coordinates of meter's upper left corner
  
  Humidity.setTitleFontSize(20);
  Humidity.setTitleFontName("Arial bold");
  Humidity.setTitle("Humidity %");
  
  ///Change meter scale values
  String[] scaleLabels5 = {"0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"};
  Humidity.setScaleLabels(scaleLabels5);
  Humidity.setScaleFontSize(18);
  Humidity.setScaleFontName("Times new roman bold");
  Humidity.setScaleFontColor(color(200,30,70));
  
  // we can also display the value of the meter
  Humidity.setDisplayDigitalMeterValue(true);
  
  //lets do some more modifications so our meter looks nice
  
  Humidity.setArcColor(color(141, 113, 178));
  Humidity.setArcThickness(15);
  
  Humidity.setMaxScaleValue(100);
  
  Humidity.setMinInputSignal(0);
  Humidity.setMaxInputSignal(100);
  
  Humidity.setNeedleThickness(3);
  
  Temperature = new Meter(this, mx + mw + 20, my + 540); //here 25, 10 are x and y coordinates of meter's upper left corner
  
  Temperature.setTitleFontSize(20);
  Temperature.setTitleFontName("Arial bold");
  Temperature.setTitle("Temperature");
  
    ///Change meter scale values
  String[] scaleLabels6 = {"0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"};
  Temperature.setScaleLabels(scaleLabels6);
  Temperature.setScaleFontSize(18);
  Temperature.setScaleFontName("Times new roman bold");
  Temperature.setScaleFontColor(color(200,30,70));
  
  // we can also display the value of the meter
  Temperature.setDisplayDigitalMeterValue(true);
  
  //lets do some more modifications so our meter looks nice

  Temperature.setArcColor(color(141, 113, 178));
  Temperature.setArcThickness(15);
  
  Temperature.setMaxScaleValue(100);
  
  Temperature.setMinInputSignal(0);
  Temperature.setMaxInputSignal(100);
  
  Temperature.setNeedleThickness(3);
  
  Dust = new Meter(this, mx + mw + 470, my );
  
  Dust.setTitleFontSize(20);
  Dust.setTitleFontName("Arial bold");
  Dust.setTitle("Dust Ratio%");
  
  Dust.setScaleLabels(scaleLabels2);
  Dust.setScaleFontSize(18);
  Dust.setScaleFontName("Times new roman bold");
  Dust.setScaleFontColor(color(200,30,70));
  
  // we can also display the value of the meter
  Dust.setDisplayDigitalMeterValue(true);
  
  //lets do some more modifications so our meter looks nice
  
  Dust.setArcColor(color(141, 113, 178));
  Dust.setArcThickness(15);
  
  Dust.setMaxScaleValue(100);
  
  Dust.setMinInputSignal(0);
  Dust.setMaxInputSignal(100);
  
  Dust.setNeedleThickness(3);
}

void draw() {
  
  // lets give title to our window
  textSize(30);
  fill(0,255,0); //Font color, (r,g,b)
  text("Multiple Sensor System", 350,35); //("text", x, y)
  
  if (port.available() > 0 ) {
   String val = port.readString(); // read incoming string on serial port
   // first we need to seperate results
   String[] list = split(val, ','); //splits value seperated by ','
   String SensorID = list[0]; 
   float SensorValue = float(list[1]);
   
   if (SensorID.equals("MQ2")) {
     MQ2.updateMeter(int(SensorValue));
   }
   else if (SensorID.equals("MQ131")) {
     MQ131.updateMeter(int(SensorValue));
   }
   else if (SensorID.equals("MQ9")) {
     MQ9.updateMeter(int(SensorValue));
   }
   else if (SensorID.equals("MQ135")) {
     MQ135.updateMeter(int(SensorValue));
   }
   else if (SensorID.equals("DHTHumid")) {
     Humidity.updateMeter(int(SensorValue));
   }
   else if (SensorID.equals("DHTTemp")) {
     Temperature.updateMeter(int(SensorValue));
  }
   Dust.updateMeter(int(1));
   text("Dust Concentration is  4.71", 1000, 500);
   text("Air Quality is clearn", 1000, 550);
  // Update the value of the meter
  //Use delay to see the changes
  delay(1000);
  }
}
