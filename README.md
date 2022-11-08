# Echolocation Project: the Eye

Lyna Saoucha
Hela Menzli
Alexandre Janin

This project aims to recreate the echolocation used by bats (as well as some cetaceans) to find their way in their environment. A half sphere that can be grabbed measures the distance to an obstacle and makes the hand vibrate according to the distance: the closer you get, the more important the vibrations are.

[fablab wiki page](http://fablab.sorbonne-universites.fr/wiki/doku.php?id=wiki:projets:echolocation)

## Final model and test


## Project follow-up

### Presentation of the project: concept, idea and primary design of the prosthesis.


In this session, we presented an initial idea for our project. We want to work on a device that would recreate the night vision of bats. Bats have a vision that works thanks to echolocation: a wave is emitted by the animal and comes back when it meets an obstacle. Thanks to the time taken by the wave, the bat can know at what distance the different obstacles are.
The presentation was supported by the powerpoint in the file and the poster.


### Initiation to Processing, a free development environment specialized in the graphic interface.


We also took Processing in hand, thanks to some basic programs that allowed us to learn the setup and draw functions and to understand the different objects of the environment (building a point, choosing colors, playing with the mouse...).

### Design of a first prosthesis : drawing and cardboard test

![Drawing](https://github.com/alexandrejanin/echolocation/blob/master/DessinConception1.jpg)

![Cardboard model test](https://github.com/alexandrejanin/echolocation/blob/master/DessinConception2.jpg)

We first started with a first idea of a box to hide the Arduino. We have to find a way to have something small, transportable, that would fit on the hand or the arm.


### Writing our first code on Processing


We visualized the phenomenon of echolocation (visual aspect). We created a "game" where a ball bounces on an invisible rectangle and with the bounce, we must find where the rectangle is located.
(Program [Circle](https://github.com/alexandrejanin/echolocation/tree/master/Programmes/Cercle) and [Point](https://github.com/alexandrejanin/echolocation/tree/master/Programmes/Point) in the Programs folder)




### Introduction to Arduino:


This time, it is Arduino that we discovered with the help of a series of exercises proposed by the framers [link](https://github.com/chevalvert/workshop-upmc-II/tree/master/2-Arduino)




Different sensor test:


Photoresistor → Light → LDR sensor


Force Sensitive Resistor → Force (pressure) → sensorFSR


Flex sensor → Flexion → sensorFLEX


Pulse sensor → Pulse → sensorPOULS


Ultrasonic Range Finder → Distance → SensorSONAR


Humidity sensor → Humidity → humidity and temperature


After changing the provided code (a program that allows you to use all the sensors), we started working on what interested our subject. We realized that we needed a sonar to transmit and send waves and the reflection was about how to warn the user. Do we use light? Sound? Anything else? To practice, we created a first program that controls the frequency of the sound with a potentiometer (Program [BuzzerPotentiometer](https://github.com/alexandrejanin/echolocation/tree/master/Programmes/BuzzerPotentiometre) in the Programs folder)





Reminder on the handling of the Arduino and its link to Processing.




We finally have the sonar so we can start writing our own code. The Sonar with which we work is the Sonar sensor (Ultrasonic Range Finder model - LV-MaxSonar-EZ1 SEN-00639 RoHS) that we will associate with a buzzer for the moment (Program [SonarPitch](https://github.com/alexandrejanin/echolocation/tree/master/Programmes/SonarPitch), [SonarLed](https://github.com/alexandrejanin/echolocation/tree/master/Programmes/SonarLed), [SonarBips](https://github.com/alexandrejanin/echolocation/tree/master/Programmes/SonarBips) in the Program folder)


### Design of the prosthesis shape :

![montage_sonar_vibreur](https://user-images.githubusercontent.com/46900484/200603614-8881526b-4efd-4090-b095-2ed2dbd49e43.png)

We have several ideas: we could start with an arc of circle with an eye shape, that we would hold with the hand in which we would hide the Arduino and the sonar. We also thought of a bracelet that we would wear on the wrist or on the arm, in the shape of a simple box.
We decided to give the perception of the obstacle thanks to a vibrator: the closer the obstacle is, the faster the frequency of the vibration. (Program [SonarVibration](http://wwww.github.com/alexandrejanin/echolocation/Programmes/SonarVibration) in the Programs folder)

### Move to the fablab and work on the finishing of the model after having chosen the starting points of inspiration:

![moodboard](https://user-images.githubusercontent.com/46900484/200603784-8e541ee6-384e-4a77-8e92-ccc41972907a.png)

![whatsapp_image_2019-05-08_at_23 37 32](https://user-images.githubusercontent.com/46900484/200604086-038b4b0d-20fc-4a5a-b60a-2f74b65286ca.jpeg)
