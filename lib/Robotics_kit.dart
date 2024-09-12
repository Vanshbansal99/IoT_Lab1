import 'package:Dashboard/school.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';
import 'sensor_Iot.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Color.fromARGB(255, 203, 206, 185) ,
          title: Text(
            'Robotics kit',
            style: TextStyle(
              color:Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.pop(context);
    },
  ),
        ),
        endDrawer: Drawer(
          child: Container(
            color: Color.fromARGB(255, 203, 206, 185),
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Image.asset("assets/images/awadhlogo.png"),
                  ),
                ),
                Builder(
                  builder: (context) {
                    return ListTile(
                      leading: Icon(Icons.home),
                      title: Text(
                        "Home",
                        style: TextStyle(fontSize: 20),
                      ),
                      onTap:() {
                        //  Navigator.pop(context); 
                          Navigator.of(context).push(
                         MaterialPageRoute(builder: (context)=> MyApp1()) 
                        );
                        // Navigate to Home
                      },
                    );
                  }
                ),
                Builder(
                  builder: (context) {
                    return ListTile(
                      leading: Icon(Icons.dashboard),
                      title: Text(
                        "Sensor Craft_IoT Fusion",
                        style: TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                         Navigator.pop(context); 
                          Navigator.of(context).push(
                         MaterialPageRoute(builder: (context)=> FirsttPage()) 
                        );
                        // Navigate to Sensor Craft_IoT Fusion
                      },
                    );
                  }
                ),
                Builder(
                  builder: (context) {
                    return ListTile(
                      leading: Icon(Icons.device_hub),
                      title: Text(
                        "Robotics Kit",
                        style: TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                          Navigator.pop(context); 
                          Navigator.of(context).push(
                         MaterialPageRoute(builder: (context)=> FirstPage()) 
                        );
                        // Navigate to Robotics Kit
                      },
                    );
                  }
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
          Container(
             decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/images/robobg2.png'), // Replace with your image asset
    fit: BoxFit.cover, // This will cover the entire background
    colorFilter: ColorFilter.mode(
      Colors.black.withOpacity(0.7), // Adjust the opacity here
      BlendMode.dstATop,
    ),
  ),
),
          ),
           ImageGrid(),]
      ),
      ),);
  }
}
class ImageGrid extends StatefulWidget {
  @override
  _ImageGridState createState() => _ImageGridState();
}

class _ImageGridState extends State<ImageGrid> {
  
  
  final List<Map<String, String>> images = [
    {
      'image': 'assets/images/micro2.png',
      'description': 'Arduino Nano Expansion Kit',
      'details':
          'This Arduino Nano Expansion Kit is a versatile and powerful platform designed to simplify the process of building various school-level projects. The kit is tailored to provide seamless integration with the Arduino Nano microcontroller, making it an ideal choice for students and educators who are looking to explore robotics, automation, and sensor-based projects.\nDirect Arduino Nano Integration: The board is designed to allow the Arduino Nano to be mounted directly on top, providing a compact and organized setup. This makes it easy to connect and manage all components without the need for complex wiring.\nMultiple Ultrasonic Sensor Ports: Equipped with 4 dedicated ports for ultrasonic sensors, the kit enables students to connect up to four sensors simultaneously. This is particularly useful for projects involving obstacle detection, distance measurement etc.\nOn-Board DC Motor Driver: The kit includes an on-board DC motor driver with two motor ports, allowing for direct control of two DC motors. This feature is perfect for building motorized projects such as robotic cars.\nServo Motor Connectivity: With 4 servo motor pins available, the kit supports the connection of up to four servo motors at one time. This enables the creation of projects that require precise control of multiple servos, such as robotic arms or automated systems.\nBuilt-In Buzzer : An on-board buzzer is included, providing an easy way to add audio feedback or alarms to your projects. This can be utilized in security systems, timers, or notification devices.\nLCD Display Connector: The board features a direct connector for an LCD display, making it straightforward to add visual output to your projects. This is useful for displaying data, status messages, or interactive menus.\nAdditional Accessible Pins: Numerous additional pins are available on the board for connecting other components and sensors. This flexibility allows students to expand their projects further, integrating various sensors and actuators as needed.\nThis kit is an excellent educational tool, enabling students to dive into the world of electronics and programming with ease. Its user-friendly design and comprehensive feature set make it ideal for creating a wide range of Arduino-based projects, from simple experiments to more complex robotic systems. By providing direct connectivity for multiple components, the kit reduces the need for complicated wiring and allows students to focus on learning key concepts in STEM education.',
    },
    {
      'image': 'assets/images/2.png',
      'description': 'Arduino Nano',
      'details':
          'Arduino Nano is a small, compatible open-source electronic developmentboard based on an 8-bit AVR microcontroller. Two versions of this board are available, one is based on ATmega328p, and the other on Atmega168.\nArduino Nano  can perform some functions similar to other boardsavailable in the market, however, it is smaller in size and is a right match forprojects requiring less memory space and fewer GPIO pins to connect with.',
    },
    {
      'image': 'assets/images/DC_motor2.png',
      'description': 'DC Motor',
      'details':
          'The 12v DC motor used in the car base of the project is a crucial component for wheel movement. This small electric motor converts electrical energy into mechanical energy, providing controlled rotational motion. When connected to the wheels, it allows for precise and adjustable movement of the car,enabling students to explore concepts of motion, speed control, and basic robotics in their projects.',
    },
    {
      'image': 'assets/images/16x2_LCD2.png',
      'description': '16x2 LCD',
      'details':
          'The term  LCD stands for liquid crystal display . It is one kind of electronic display module used in an extensive range of applications like various circuits &amp; devices like mobile phones, calculators, computers, TV sets, etc.',
    },
    {
      'image': 'assets/images/Wheel1.png',
      'description': 'Base wheel',
      'details':
          'The base wheels are essential components of the robotic kit, providing mobility and control. These wheels typically made of durable plastic, are designed to attach securely to the DC motors. They offer good traction and smooth rotation, allowing the robot to move efficiently on various surfaces.',
    },
    {
      'image': 'assets/images/Car_Chassis2.png',
      'description': 'Metal chassis',
      'details':
          'A 3-Wheel metal chassis is the structural component for the robot which contains the drive train and allow the robot to be mobile by using wheels.',
    },
     {
      'image': 'assets/images/12v_Battery2.png',
      'description': 'Battery',
      'details':
          'The DC power supply battery is the primary energy source for the robotickit. It provides a stable, direct current (DC) electrical power to run the motors,sensors, and microcontroller. Typically rechargeable, this battery allows forportable operation of the robot without the need for constant connection to a power outlet. Its compact size and reliable power output enable students to create mobile, autonomous projects while learning about energy management and electrical systems in practical applications.',
    },
    {
      'image': 'assets/images/USB_Cable___Jumper_wire2.png',
      'description': 'Jumper wires and USB cable',
      'details':
          'These flexible, insulated wires with pins at each end allow for easyconnections between components on a board or to other devices. They come in various lengths and colors, enabling students to create neat, organized circuits and easily trace connections in their projects.\nUSB Cable: The USB (Universal Serial Bus) cable serves dual purposes in the kit. It provides power to the microcontroller or other components, and also enables data transfer between the device and a computer.',
    },
    {
      'image': 'assets/images/Ultrasonic_Sensor_Module2.png',
      'description': 'Ultrasonic Sensor',
      'details':
          'The HC-SR04 ultrasonic sensor is an electronic device that calculates distance by emitting sound waves and collecting their echoes.It can measure objects from up to 4.5 meters away. There are total 4 pins in this sensor, vcc for power supply of +5v, Gnd for common ground, Triggerpin to start the sensor, Eco pin to receive the signal.',
    },
    {
      'image': 'assets/images/Bluetooth_module2.png',
      'description': 'Bluetooth Module',
      'details':
          'HC-05 Bluetooth module in this project is a key component for wireless communication. It enables the robotic device to connect and communicate with smartphones or computers over short distances. This module allows for real-time data transmission, remote control of the robot, and seamless integration with mobile apps.',
    },
    {
      'image': 'assets/images/IR_Sensor_module2.png',
      'description': 'IR Sensor',
      'details':
          'The IR (Infrared) Sensor is used for detecting objects and measuring distances. It works by emitting infrared light and detecting its reflection from nearby objects. This sensor enables robots to avoid obstacles and interact with their environment.',
    },
    {
      'image': 'assets/images/Raindrop_Sensor_module2.png',
      'description': 'Raindrop Sensor Module',
      'details':
          'Raindrop Sensor is a tool used for sensing rain. It consists of two modules, a rain board that detects the rain and a control module, which compares the analog value, and converts it to a digital value.It has 4 pins namely, VCC to connect supply voltage of 5V, Gnd for common ground, D0 Digital pin to get digital output, A0 Analog pin to get analog output.',
    },
    {
      'image': 'assets/images/Water_level_Sensor_module2.png',
      'description': 'Water Level Sensor',
      'details':
          'The water level sensor is a device that measures the liquid level in a fixed container that is too high or too low. When the liquid level is detected, the sensor converts the sensed data into an electrical signal. It works on the Operating voltage of DC 3-5V and Operating temperature range of 10℃-30℃',
    },
    {
      'image': 'assets/images/Water_pump_with_pipe2.png',
      'description': 'Mini 5v DC Water Pump',
      'details':
          'The Arduino Mini 5V DC Water Pump is a compact and efficient device designed to control water flow in various small-scale projects. This pump operates on a 5V DC power supply, which makes it easily compatible with Arduino boards and other microcontrollers.',
    },
    {
      'image': 'assets/images/Hall_effect_sensor_module2.png',
      'description': 'Hall effect sensor module',
      'details':
          'The Hall Effect sensor module is a magnetic field detector used in the robotic kit. It utilizes the Hall Effect principle to sense the presence and strength of magnetic fields. This sensor can detect nearby magnets or measure magnetic fields.',
    },
     {
      'image': 'assets/images/GPS_Sensor_module2.png',
      'description': 'GPS Sensor Module',
      'details':
          'The Global Positioning System (GPS) sensor module in the kit is a compact device that receives signals from global positioning satellites to determine precise location coordinates. It provides accurate data on latitude, longitude, altitude, and time. ',
    },
     {
      'image': 'assets/images/sg.png',
      'description': 'SG90 Servo Motor',
      'details':
          'The SG90 is a type of micro servo motor commonly used in robotics and model applications. It is designed to operate within a voltage range of 4.8V to 6V and  has an operating angle of approximately 180 degree, which means it can rotate between 0 degrees and 180 degrees. ',
    },
    
  ];


  @override
  Widget build(BuildContext context) {
    final screenWidth =MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Large card at the top
         /* Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => SingleChildScrollView(
                    child: AlertDialog(
                      title: Text('Robotic Kit'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('micro.png', height: MediaQuery.of(context).size.height * 0.5,),
                          SizedBox(height: 10),
                          Text(
                              'Our robotic kit offers students an exciting gateway into the world of robotics and embedded systems.Centered around Bluetooth-based robots, this comprehensive package includes various sensors andmodules, enabling hands-on exploration of key concepts like object detection, motor control, and wirelesscommunication.\nStudents can build and program their own robots, applying STEM principles to create everythingfrom autonomous vehicles to smart irrigation systems. This kit teaches valuable technical skills and alsonurtures creativity and problem-solving abilities, preparing young minds for the technological challengesof tomorrow.',
                              style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 5, 5, 5),
                    ),),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('Close'),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('robo.jpg'),
                        fit: BoxFit.fill,
                      ),
                      // color: Color.fromARGB(255, 203, 206, 185)
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.black54,
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Robotic Kit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  
                  ),
                ),
                
              ),
            ),
          ),*/ 
          

        Align(
          alignment: Alignment.center,
          child: Card(
            color: Colors.white.withOpacity(0.6) ,
            child: Image.asset('assets/images/robokit.png',
            fit:BoxFit.contain ,),
          ),
        ),
          Card(
             color: Colors.white.withOpacity(0.6) ,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: Text(
                'Our robotic kit offers students an exciting gateway into the world of robotics and embedded systems.Centered around Bluetooth-based robots, this comprehensive package includes various sensors andmodules, enabling hands-on exploration of key concepts like object detection, motor control, and wirelesscommunication.\nStudents can build and program their own robots, applying STEM principles to create everythingfrom autonomous vehicles to smart irrigation systems. This kit teaches valuable technical skills and alsonurtures creativity and problem-solving abilities, preparing young minds for the technological challengesof tomorrow',
                style: TextStyle(
                  fontSize: 25,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
                      
                        //  color: Color.fromARGB(255, 203, 206, 185).withOpacity(0.5) ,
                 Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            HardwareDescriptionTile(
                              title: 'Features',
                              description: '1. This Shield have a line follower array in which the three terminals from most sensors (VCC, O/P,GND)are connected directly..\n2. Pin no 11 is connected to an external LED to watch o/p on the pin and if you want to use the Buzzerthen it can be done just by adding a jumper connector to pin 12 &amp; BZR.\n3. There are two Software Serial Options.\n4. Four Ultrasonic Sensors can be used at once to make Autonomous Car\n5. The Motor Driver is onboard so less wiring needed\n6. Two input switches that can be used in different projects (ButtonPin1 = 10, ButtonPin2 = 12)\n7. Onboard Buzzer (pin no. 12)\n9. Bluetooth Connector for Wireless Control Projects\n10. Wrong polarity protection',
                              // imagePath: 'assets/images/BLE_Gateway-removebg-preview.png',
                            ),
                                            HardwareDescriptionTile(
                        title: 'Application:',
                        description: ' Distance measurement, Obstacle avoidance in autonomous robots, level sensing in tanks.\n GPS Sensor module is used for Navigation systems, location tracking for delivery robots.\n Flood detection systems, smart irrigation systems, water level monitoring in tanks.\n Detecting the speed of different devices by using Hall effect sensor module, proximity detection,security systems.\n Remote control of robots, data transfer between sensors and smartphones.\n IR Sensor is used to detect objects and measure distances to them, allowing robots to avoidobstacles, also used in remote control systems.\n Weather monitoring systems, automated window closing systems, smart irrigation controls.',
                        // imagePath: 'assets/images/BLE_Development_Kit-removebg-preview.png',
                                            ), ],
                        ),
          
          // Heading line for subcards
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Text(
              'Components of this kit',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Grid of subcards
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(8),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, // Three images per row
              crossAxisSpacing: 8, // Space between columns
              mainAxisSpacing: 8,  // Space between rows
              childAspectRatio: 1.5, // Adjust for the shape you want
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) =>SingleChildScrollView(
                      child: AlertDialog(
                        title: Text(images[index]['description']!),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(images[index]['image']!, fit: BoxFit.cover),
                            SizedBox(height: 10),
                            Text(images[index]['details']!,
                            style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 5, 5, 5),
                                        ),),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text('Close'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Card(
                   color: Colors.white.withOpacity(0.5),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          images[index]['image']!,
                          fit: BoxFit.contain,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            // color: Colors.black54,
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              images[index]['description']!,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
              );
            },
          ),
           Card(
            color: Colors.white.withOpacity(0.5),

             child: Container(
              width: screenWidth,
               child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Text(
                  'Benefits to the students and Institutions:',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                         ),
             ),
           ),
           /* Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 350,
                    // width: screenWidth-20,
                   child: Text('• Hands-On Learning Experience\n• Encourages Creativity and Innovation\n• Develops Critical Thinking\n• Foundation in STEM Education\n• Improves Academic Performance\n• Fosters a Culture of Innovation\n• Strengthens Community and Industry Partnerships\n• Promotes Interdisciplinary Learning\n• Boosts School’s Prestige and Recognition\n• Supports Sustainable Education Initiatives',
                  style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ), ),
                    
                  ),
                ),
              ),*/
              Card(color: Colors.white.withOpacity(0.5),

                child: Container(
                  width: screenWidth,
                  child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                              child: Text(
                  '• Hands-On Learning Experience\n• Encourages Creativity and Innovation\n• Develops Critical Thinking\n• Foundation in STEM Education\n• Improves Academic Performance\n• Fosters a Culture of Innovation\n• Strengthens Community and Industry Partnerships\n• Promotes Interdisciplinary Learning\n• Boosts School’s Prestige and Recognition\n• Supports Sustainable Education Initiatives',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                              ),
                            ),
                ),
              ),
        ],
      ),
    );
  }
}
class HardwareDescriptionTile extends StatelessWidget {
  final String title;
  final String description;
  // final String imagePath;

  const HardwareDescriptionTile({
    required this.title,
    required this.description,
    // required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.5),
      margin: EdgeInsets.only(bottom: 16.0),
      elevation: 2.0,
      child: ExpansionTile(
        // backgroundColor: Color.fromARGB(255, 203, 206, 185).withOpacity(0.5),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 40, 16, 1),
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 5, 5, 5),
                  ),
                ),
                // SizedBox(height: 16.0),
                // Image.asset(
                  // imagePath,
                  // height: 150,
                // ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}