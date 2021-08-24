import g4p_controls.*;
import java.awt.Font;

GSlider Wrist;
GLabel WristText;
GLabel WristValue;
GSlider firstMotor; 
GSlider secondMotor; 
GSlider ThirdMotor;
GLabel firstMotorText; 
GLabel secondMotorText; 
GLabel ThirdMotorText;
GLabel firstMotorValue; 
GLabel secondMotorValue; 
GLabel ThirdMotorValue;
GLabel Title;
GLabel Gripper;
GLabel SerialPort;
GLabel Down;
GLabel Up;
GLabel Down1;
GLabel Up1;
GLabel Left;
GLabel Right;
GDropList dropList; 

GButton Start, Reset, Open, Close;

public void setup(){
  size(550, 500, JAVA2D);

  Start = new GButton(this, 160, 350, 100, 50, "Start");
  Start.setFont(new Font("Arial", Font.BOLD, 18));

  Reset =  new GButton(this, 300, 350, 100, 50, "Reset Arm");
  Reset.setFont(new Font("Arial", Font.BOLD, 18));
  
  Open = new GButton(this, 160, 60, 100, 20, "Open");
  Close = new GButton(this, 270, 60, 100, 20, "Close");

  createGUI();
}

public void draw(){
  
  background(200);
  
}

public void Wrist(GSlider source, GEvent event) { //_CODE_:sliderLeft:362079:
  WristValue.setText(source.getValueS()+ "°");
} //_CODE_:sliderLeft:362079:

public void FirstMotor(GSlider source, GEvent event) { //_CODE_:sliderLeft:362079:
  firstMotorValue.setText(source.getValueS()+ "°");
} //_CODE_:sliderLeft:362079:

public void secondMotor(GSlider source, GEvent event) { //_CODE_:sliderRight:951269:
  secondMotorValue.setText(source.getValueS()+ "°");
} //_CODE_:sliderRight:951269:

public void ThirdMotor(GSlider source, GEvent event) { //_CODE_:sliderRight:951269:
  ThirdMotorValue.setText(source.getValueS() + "°");
}

void handleButtonEvents(GButton button, GSlider source, GEvent event) { 
  // Clicked on 'bigger'
  if (button == Reset && event == GEvent.CLICKED) {
      secondMotorValue.setText("0.0°");
      ThirdMotorValue.setText("0.0°");
      firstMotorValue.setText("0.0°");
      ThirdMotorValue.setText(source.getValueS() + "0°");
  }
}


public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Robot Arm Gui");
  
  Gripper = new GLabel(this,-10, 50, 150, 40);
  Gripper.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Gripper.setText("Gripper");
  Gripper.setOpaque(false);
  Gripper.setFont(new Font("Arial", Font.BOLD, 16));
  
  Wrist = new GSlider(this, 140, 100, 200, 30, 20.0);
  Wrist.setLimits(180.0, 0.0, 360.0);
  Wrist.setNumberFormat(G4P.DECIMAL, 2);
  Wrist.setOpaque(false);
  Wrist.addEventHandler(this, "Wrist");
  
  WristText = new GLabel(this,-10, 95, 150, 40);
  WristText.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  WristText.setText("Wrist");
  WristText.setOpaque(false);
  WristText.setFont(new Font("Arial", Font.BOLD, 16));
  
  WristValue = new GLabel(this, 370, 100, 120, 30);
  WristValue.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  WristValue.setText("180.0°");
  WristValue.setOpaque(true);
  WristValue.setFont(new Font("Arial", Font.BOLD, 16));
  
  firstMotor = new GSlider(this, 140, 150, 200, 30, 20.0);
  firstMotor.setLimits(90.0, 0.0, 180.0);
  firstMotor.setNumberFormat(G4P.DECIMAL, 2);
  firstMotor.setOpaque(false);
  firstMotor.addEventHandler(this, "Wrist");

  Down = new GLabel(this,140, 165, 150, 40);
  Down.setText("Down");
  Down.setFont(new Font("Arial", Font.BOLD, 12));

  Up = new GLabel(this,322, 165, 150, 40);
  Up.setText("Up");
  Up.setFont(new Font("Arial", Font.BOLD, 12));
  
  firstMotorText = new GLabel(this,-10, 145, 150, 40);
  firstMotorText.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  firstMotorText.setText("Elbow");
  firstMotorText.setOpaque(false);
  firstMotorText.setFont(new Font("Arial", Font.BOLD, 16));
  
  firstMotorValue = new GLabel(this, 370, 150, 120, 30);
  firstMotorValue.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  firstMotorValue.setText("90.0°");
  firstMotorValue.setOpaque(true);
  firstMotorValue.setFont(new Font("Arial", Font.BOLD, 16));
 
  secondMotor = new GSlider(this, 140, 200, 200, 30, 20.0);
  secondMotor.setLimits(90.0, 0.0, 180.0);
  secondMotor.setNumberFormat(G4P.DECIMAL, 2);
  secondMotor.setOpaque(false);
  secondMotor.addEventHandler(this, "secondMotor");
  
  Down1 = new GLabel(this,140, 215, 150, 40);
  Down1.setText("Down");
  Down1.setFont(new Font("Arial", Font.BOLD, 12));

  Up1 = new GLabel(this,322, 215, 150, 40);
  Up1.setText("Up");
  Up1.setFont(new Font("Arial", Font.BOLD, 12));
  
  secondMotorText = new GLabel(this, -10, 195, 150, 30);
  secondMotorText.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  secondMotorText.setText("Shoulder");
  secondMotorText.setOpaque(false);
  secondMotorText.setFont(new Font("Arial", Font.BOLD, 16));  
 
  secondMotorValue = new GLabel(this, 370, 200, 120, 30);
  secondMotorValue.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  secondMotorValue.setText("90.0°");
  secondMotorValue.setOpaque(true);
  secondMotorValue.setFont(new Font("Arial", Font.BOLD, 16));

  ThirdMotor = new GSlider(this, 140, 250, 200, 30, 20.0);
  ThirdMotor.setLimits(180.0, 0.0, 360.0);
  ThirdMotor.setNumberFormat(G4P.DECIMAL, 2);
  ThirdMotor.setOpaque(false);
  ThirdMotor.addEventHandler(this, "ThirdMotor");
   
  Left = new GLabel(this,140, 265, 150, 40);
  Left.setText("Left");
  Left.setFont(new Font("Arial", Font.BOLD, 12));

  Right = new GLabel(this,322, 265, 150, 40);
  Right.setText("Right");
  Right.setFont(new Font("Arial", Font.BOLD, 12));
  
  ThirdMotorText = new GLabel(this,-10, 250, 150, 40);
  ThirdMotorText.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  ThirdMotorText.setText("Base");
  ThirdMotorText.setOpaque(false);
  ThirdMotorText.setFont(new Font("Arial", Font.BOLD, 16));
  
  ThirdMotorValue = new GLabel(this, 370, 250, 120, 30);
  ThirdMotorValue.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  ThirdMotorValue.setText("180.0°");
  ThirdMotorValue.setOpaque(true);
  ThirdMotorValue.setFont(new Font("Arial", Font.BOLD, 16));

  Title = new GLabel(this, 180, 10, 400, 40);
  //Title.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Title.setText("Robot Arm Control");
  Title.setFont(new Font("Arial", Font.BOLD, 24));

  Title.setOpaque(false);
  
  SerialPort = new GLabel(this,0, 300, 150, 40);
  SerialPort.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  SerialPort.setText("Serial Port 3   9600 Baude Rate");
  SerialPort.setOpaque(false);
  SerialPort.setFont(new Font("Arial", Font.BOLD, 10));
  
}

// Variable declarations 
// autogenerated do not edit
