import 'package:Dashboard/school.dart';
import 'package:flutter/material.dart';

import 'Robotics_kit.dart';
import 'main.dart';


class FirsttPage extends StatelessWidget {
  const FirsttPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           backgroundColor:Color.fromARGB(255, 203, 206, 185).withOpacity(0.5) ,
          title: Text(
            'Sensor Craft_IoT Fusion',
            style: TextStyle(
              color:Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: Drawer(
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
                         MaterialPageRoute(builder: (context)=> schoolpage()) 
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
    image: AssetImage('assets/images/bg1.jpg'), // Replace with your image asset
    fit: BoxFit.cover, // This will cover the entire background
    colorFilter: ColorFilter.mode(
      Colors.black.withOpacity(0.5), // Adjust the opacity here
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
      'image': 'assets/images/acc.png',
      'description': 'Accelerometer',
      'details':
          'An accelerometer is an electronic sensor that measures the acceleration forces acting on an object. These forces can be due to gravity or the movement of the object itself. By detecting these forces, an accelerometer can determine the orientation, tilt, and motion of the object it is attached to.\nKey Features:\n• 3-Axis Measurement: Most modern accelerometers can measure acceleration along three axes (X, Y, and Z), providing a comprehensive understanding of movement in any direction.\n• Sensitivity: Accelerometers can detect minute changes in motion, making them highly sensitive to even small movements.\n• Compact Size: They are typically small and lightweight, which allows them to be integrated into a wide range of devices and applications.',
    },
    {
      'image': 'assets/images/step.png',
      'description': 'Step Counting:',
      'details':
          'Step counting using accelerometers is a technology-driven method to measure physical activity, particularly walking or running steps. Accelerometers are sensors that detect changes in acceleration forces, allowing devices to determine movement patterns.\nThis application is designed to count steps by monitoring accelerometer data, calculating movement vectors, and determining when a step occurs based on a set threshold. The integration with Bluetooth allows for easy data transmission, while flash memory ensures step data is retained even after a power cycle.\nCharacteristics of Human Steps:\n1. Periodic Motion: Walking or running typically generates periodic acceleration changes.\n2. Distinct Acceleration Peaks: Each step causes a significant change in acceleration, creating detectable peaks in the accelerometer data.\n3. Three-Dimensional Motion: Steps involve movement in all three axes (x, y, z), which is captured by the accelerometer.',
    },
    {
      'image': 'assets/images/speed.png',
      'description': 'Speed',
      'details':
          'Measuring speed using an accelerometer involves tracking changes in velocity over time by integrating the acceleration data. Since speed is the rate of change of position, and acceleration is the rate of change of velocity, an accelerometer can be used to estimate speed by performing a series of calculations.\nBasic Principle:\n• Acceleration to Velocity: The accelerometer measures acceleration, which is the change in velocity over time. By integrating the acceleration data (calculating the area under the acceleration-time curve), you can determine the change in velocity.\n• Velocity to Speed: Since speed is the magnitude of velocity, you can calculate speed by finding the magnitude of the velocity vector obtained from the accelerometer data.\nUsing an accelerometer to measure speed teaches students important concepts in physics and mathematics, such as integration and vector analysis. It also provides hands-on experience with sensor data processing and introduces challenges like noise reduction and calibration. This makes it a valuable exercise in both theoretical and practical aspects of STEM education.',
    },
    {
      'image': 'assets/images/distance.png',
      'description': 'Distance',
      'details':
          'Measuring distance using an accelerometer involves a series of calculations based on the acceleration data collected over time. The process requires integrating the acceleration data twice to first obtain velocity and then to determine the distance traveled.\nBasic Principle:\n Acceleration to Velocity: The accelerometer measures acceleration (change in velocity). By integrating this data over time, you can calculate the velocity of the object.\n• Velocity to Distance: By integrating the velocity data over time, you can estimate the distance traveled.\nUsing an accelerometer to measure distance helps to understand the relationship between acceleration, velocity, and displacement. It also introduces the concepts like integration, noise reduction, and data filtering, which are critical in fields like physics, engineering, and data science. This hands-on approach enhances learning by applying theoretical knowledge to real-world scenarios.',
    },
  ];

  
  @override
  Widget build(BuildContext context) {
    final screenWidth =MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(8),
          child: Center(
            child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/img2.png'),
                            fit: BoxFit.fill,
                          ),
                        ),),
          )
          
          ),
          Padding(padding: EdgeInsets.all(8),
          child: Text(
                      'The NODE-based activity monitoring device introduces students to the exciting intersection of embedded, IoT and technology. This compact tool features a 3-axis accelerometer and Bluetooth connectivity, allowing real-time motion analysis through a user-friendly mobile app.\nThe devices versatility extends to practical applications like speed measurement and step counting, making physics relatable and engaging. It is directly connected to Bluetooth (BLE) which is able to monitor the system in real time by using our mobile App. By bridging theoretical concepts with real-world technology, this tool reinforces STEM learning and also inspires curiosity and innovation in young minds, preparing them for future challenges in science and engineering.',
                       style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                      //  textAlign: TextAlign.center,
                      ),
          ),
          // Large card at the top
         /* Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => SingleChildScrollView(
                    child: AlertDialog(
                      title: Text('Sensor Craft-IoT Fusion'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('Iot.jpg', height: MediaQuery.of(context).size.height * 0.5,),
                          SizedBox(height: 10),
                          Text(
                              'The NODE-based activity monitoring device introduces students to the exciting intersection ofembedded, IoT and technology. This compact tool features a 3-axis accelerometer and Bluetoothconnectivity, allowing real-time motion analysis through a user-friendly mobile app. Students canexplore a range of physics concepts, from pendulum motion to gravity measurement, while gaininghands-on experience with data collection and analysis.',
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
              child: Center(
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 350,
                      width: screenWidth*0.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('Iot.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          color: Colors.black54,
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Sensor Craft-IoT Fusion',
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
            ),
          ),*/
          Padding(padding: EdgeInsets.all(8.0),
          child: Text(
              'Mobile Interface',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8),
          child: Center(
            child: Container(
                        height: 280,
                        width: 450,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/mobile2.png'),
                            fit: BoxFit.fill,
                          ),
                        ),),
          )
          
          ),
          
                       
                     /* Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                    HardwareDescriptionTile(
                      title: 'Application:',
                      description: '1. Accelerometer: We can use the activity monitor device to record and analyse different types ofmotion. For example, they can attach the device to a pendulum to study harmonic motion, or to a toycar to examine acceleration and deceleration. Data collected can be plotted to visualize changes overtime.\n2. Step Counting: We can create a simple pedometer using the activity monitor device to detect andcount steps. By programming the device to recognize the repetitive motion pattern of walking, thedevice can tally steps and potentially even calculate distance travelled and calories burned.\n3. Speed: The BLE Node measures speed using its 3-axis accelerometer data. It tracks change inacceleration over time, then integrates this data to calculate velocity. This method allows for speedmeasurement without additional sensors, making it versatile for various applications in studentsprojects and experiments.\n3. Speed: The BLE Node measures speed using its 3-axis accelerometer data. It tracks change inacceleration over time, then integrates this data to calculate velocity. This method allows for speedmeasurement without additional sensors, making it versatile for various applications in studentsprojects and experiments.',
                      // imagePath: 'assets/images/BLE_Development_Kit-removebg-preview.png',
                    ), ],
                      ),*/
         
          
          // Heading line for subcards
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Text(
              'Applications',
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
              crossAxisCount: 4, // Three images per row
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
                  color: Colors.black.withOpacity(0.5),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      
                      fit: StackFit.expand,
                      children: [
                        // Image.asset(
                          // color: Colors.black.withOpacity(0.5),
                          // images[index]['image']!,
                          // fit: BoxFit.cover,                //display image to full card
                          
                        // ),
                        
                        AspectRatio(
              aspectRatio: 16 / 11,
              child: Image.asset(
                images[index]['image']!,
              ),
            ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            color: Colors.black54,
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              images[index]['description']!,
                              style: TextStyle(
                                color: Colors.white,
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Text(
              'Benefits to the students and Institutions:',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           Card(
            color:Colors.black.withOpacity(0.5) ,
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
        ],
      ),
    );
  }
}