import 'package:flutter/material.dart';

import 'Robotics_kit.dart';
import 'sensor_IoT.dart';
void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: schoolpage(),
    );
  }
}

class schoolpage extends StatelessWidget {
  // const schoolpage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        // backgroundColor: Color.fromARGB(255, 145, 132, 92),
        appBar: AppBar(
          backgroundColor:Color.fromARGB(255, 203, 206, 185) ,
          title: Text(
            'School Lab',
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
        body: Container(
          decoration: BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/images/img1.jpeg'), // Replace with your image asset
    fit: BoxFit.cover, // This will cover the entire background
    colorFilter: ColorFilter.mode(
      Colors.black.withOpacity(0.5), // Adjust the opacity here
      BlendMode.dstATop,
    ),
  ),
),

          child: SingleChildScrollView(
                child: Column(
                  children: [
                    /*Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),*/
                    Padding(padding: EdgeInsets.all(8.0),
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Awadh.PNG'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),),
                    Padding(padding:EdgeInsets.all(8.0),
                    child: Text(
                      'Technology and Innovation Foundation',
                       style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                      //  textAlign: TextAlign.center,
                      ),),
                      Padding(padding:EdgeInsets.all(8.0),
                    child: Text(
                      'iHub - AWaDH',
                       style: TextStyle(
                              color:Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
          
                      // textAlign: TextAlign.center,
                      ),
                      ),
                       Padding(padding:EdgeInsets.all(8.0),
                    child:Align(
                       alignment: Alignment.centerLeft,
                      child: Text(
                        'The world of embedded systems and the Internet of Things (IoT) is rapidly transforming our daily lives. These technologies form the invisible backbone of our digital age, powering everything from smart homes to autonomous vehicles. This module offers an immersive journey into this fascinating realm, where miniature computers and sensors breathe life into everyday objects.\nThis program offers the fundamental concepts of embedded system, sensor technology, and wireless communication through hands-on experiences and aims to foster curiosity, inspire innovation, and equip with essential skills for the technology-driven future. Through our carefully designed kits, students can engage in practical learning experiences that cover a wide range of applications, from activity monitoring systems to robotics.',
                         style: TextStyle(
                                color:Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              // textDirection: TextDirection.ltr,         
                               ),
                    ),
                             ) ,
                    Padding(padding:EdgeInsets.all(8.0),
                    child:Align(
                       alignment: Alignment.centerLeft,
                      child: Text(
                        'Objectives of this program',
                         style: TextStyle(
                                color:Colors.black,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                              // textDirection: TextDirection.ltr,         
                               ),
                    ),
                             ) ,
                    Padding(padding:EdgeInsets.all(8),
                    child: Align(
                       alignment: Alignment.centerLeft,
                      child: Text(
                        'Educate: Provide fundamental knowledge on emerging technology.\nEngage: Create hands-on learning experiences.\nInspire: Encourage interest in STEM fields.\nEmpower: Enable students to develop their own Embedded projects.',
                        style: TextStyle(
                                color:Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ), ),
                    ),),
                    Text(
                      '',
                      textAlign: TextAlign.left,
                    ),
                     Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Builder(
                          builder: (context) {
                            return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 203, 206, 185),
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                                textStyle: TextStyle(fontSize: 30),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => FirstPage()),
                                );
                              },
                              child: Text(' Robotics Kit'),
                            );
                          }
                        ),
                        Builder(
                          builder: (context) {
                            return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 203, 206, 185),
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                                textStyle: TextStyle(fontSize: 30),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => FirsttPage()),
                                );
                              },
                              child: Text(' Sensor Craft IoT'),
                            );
                          }
                        ),
                      ],
                    ),)
                          /*   Padding(padding:EdgeInsets.all(8.0),
                             child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 350,
                      child: Align(
                        // alignment: Alignment.topLeft,
                          child: Text(
                            'Educate: Provide fundamental knowledge on emerging technology.\n Engage: Create hands-on learning experiences.\nInspire: Encourage interest in STEM fields.\nEmpower: Enable students to develop their own Embedded projects.',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 178, 43, 43),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        
                      ),
                    ),
                  ),
                ),)*/
                    
                  ],
                ),  
            
          
                ),
        ),
      );
  }
}

