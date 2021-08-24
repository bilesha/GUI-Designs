# GUI-Designs
GUI Designs

Simple GUI Designs for university projects using Proccessing software program.

Processing uses Java programming language.

![image](https://user-images.githubusercontent.com/73975745/130543826-91f4dcd7-b6f0-4edc-9ebb-7b6759aac975.png)

This GUI was designed on the processing development environment. I chose this specific development tool because I already had experience using it for other Arudino based projects and there are a lot of tools and libraries that can be utilized to create various types of graphical user interfaces. This GUI is straight forward and easy for an user to interact with. 

The gripper has a simple open and close function where the gripper will open or close based on the buttons pressed. It is important to program the gripper in a so that the gripper doesn’t continuously and forcefully keep clamping when it has an object in its grasp as this excess force on an solid object will damage the robotic arm. These open/close buttons can be changed into a slider if this proves to be a problem. The wrist and base have 360 degrees of freedom as they are capable of rotating freely due to the design. The movements on the elbow and shoulder are limited as if it was capable of too much free fall rotation, the robotic arm will have excess movement where it will hit the ground and perform too many unnecessary movements which will damage the arm. Tests will be conducted with the elbow and shoulder joints to measure the idealangle limitations and movements that are required for efficient performance.

The start button turns the robotic arm on and performs a serial connection to the microcontroller. The reset button resets all the components to its original angles which are defined on the picture above.

2.0

![image](https://user-images.githubusercontent.com/73975745/130544222-92af5f03-479b-4896-b598-e5ff5a091015.png)

This is the visual display of the data transmitted via the Arduino IDE onto processing 3 IDE. It displays all the sensors and the percentage of the respective gas they are measuring and displays it clearly.  The dust concentration is also displayed and the quality of air that is in the range of the dust concentration.
