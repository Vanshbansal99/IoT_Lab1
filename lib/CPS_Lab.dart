import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CPSlab(),
    );
  }
}


class CPSlab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 240, 216, 186) ,
        title: LayoutBuilder(
          builder: (context, constraints) {
            bool isMobile = constraints.maxWidth < 900;

            return Row(
              children: [
                if (!isMobile) SizedBox(width: 50),
                 Image.asset(
                            'assets/images/awadhlogo.png',
                            height: 50,
                          ),
                          SizedBox(width: 10,),
                          Text(
                              'CPS Lab Tutorial',
                              style: TextStyle(color: Colors.black),
                            ),
                SizedBox(width: isMobile ? 8 : 16),

                
                
                Spacer(),
                if (!isMobile) ...[
                  ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 236, 212, 182),
                            ),
                            child: Text(
                              'Home',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(width:MediaQuery.of(context).size.width*0.02),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cps_lab_hardware');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:  Color.fromARGB(255, 236, 212, 182),
                            ),
                            child: Text(
                              'CPS Lab Hardwares',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),SizedBox(width:MediaQuery.of(context).size.width*0.02),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cpsLab');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:  Color.fromARGB(255, 236, 212, 182),
                            ),
                            child: Text(
                              'CPS Lab Tutorial',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),SizedBox(width:MediaQuery.of(context).size.width*0.02),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context,'/school');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 236, 212, 182),
                            ),
                            child: Text(
                              'School Module',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),SizedBox(width:MediaQuery.of(context).size.width*0.02),
                           ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/aboutUs');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 236, 212, 182),
                            ),
                            child: Text(
                              'About Us',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                ],
                // if (isMobile)
                  // IconButton(
                    // icon: Icon(Icons.menu, color: Colors.white),
                    // onPressed: () {
                      // Scaffold.of(context).openDrawer();
                    // },
                  // ),
              ],
            );
          },
        ),
      ),
     endDrawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 247, 216, 178),
          child: ListView(
            // padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  // color: Colors.grey[900],
                ),
                child:  Image.asset(
                            'assets/images/awadhlogo.png',
                            height: 50,
                          ),
              ),
              ListTile(
                leading: 
                Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  
                     Navigator.pushNamed(context, '/home');
                },
              ),
              ListTile(
                leading: 
                Icon(Icons.dashboard),
                title: Text('CPS Lab Hardwares'),
                onTap: () {
                  
                     Navigator.pushNamed(context, '/cps_lab_hardware');
                },
              ),
              ListTile(
                leading: 
                Icon(Icons.category, color: Theme.of(context).iconTheme.color),
                title: Text('CPS Lab Tutorial'),
                onTap: () {
                  
                     Navigator.pushNamed(context, '/cpsLab');
                },
              ),
              ListTile(
                leading: 
                Icon(Icons.school),
                title: Text('School Module'),
                onTap: () {
                  
                     Navigator.pushNamed(context, '/school');
                },
              ),
              ListTile(
                leading: 
                Icon(Icons.info),
                title: Text('About Us'),
                onTap: () {
                  
                     Navigator.pushNamed(context, '/aboutUs');
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
         /* Card(
                elevation: 5,
                margin: EdgeInsets.all(10),
                
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/awadhlogo.png',
                            height: 55,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 247, 216, 178), // Set the background color of the button
              ),
                            child: Text('Home',
                            style: TextStyle(
                              color: Colors.black
                            ),),
                            
                          
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cps_lab_hardware');
                            },
                            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 247, 216, 178), // Set the background color of the button
              ),
                            child: Text('CPS Lab Hardwares',
                            style: TextStyle(
                              color: Colors.black
                            ),),
                            
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cpsLab');
                            },
                            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 247, 216, 178), // Set the background color of the button
              ),
                            child: Text('CPS Lab Tutorial',
                            style: TextStyle(
                              color: Colors.black
                            ),),
                          ),
                           ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context,'/school');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 247, 216, 178),
                            ),
                            child: Text(
                              'School page',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/aboutUs');
                            },
                            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 247, 216, 178), // Set the background color of the button
              ),
                            child: Text('About Us',
                            style: TextStyle(
                              color: Colors.black
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),*/

      /* AppBar(
        title: Text(
          'CPS LAB TUTORIALS',
          
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Color.fromARGB(255, 81, 34, 3)
          ),
        ),
      ),*/
       Expanded(
            child: Container(
      
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("./../assets/assets/images/bg_for_CPS_tutorials.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 20, // Add spacing between cards
              runSpacing: 20, // Add spacing between rows
              children: [
                buildCardWithImage(
                  context,
                  'LED and Button Experiments',
                  'assets/images/LED_exp.jpg',
                  () {
                    Navigator.pushNamed(context, '/LED_exp');
                  },
                ),
                buildCardWithImage(
                  context,
                  'LIS3DH Experiment',
                  'assets/images/LIS3DH_Sensor_Board-removebg-preview.png',
                  () {
                    Navigator.pushNamed(context, '/lis3dh');
                  },
                ),
                buildCardWithImage(
                  context,
                  'SHT40 Experiment',
                  'assets/images/SHT40_Sensor_Board-removebg-preview.png',
                  () {
                    Navigator.pushNamed(context, '/SHT40_Experiment');
                  },
                ),
                buildCardWithImage(
                  context,
                  'STTS751 Experiment',
                  'assets/images/STTS751_Sensor_Board-removebg-preview.png',
                  () {
                    Navigator.pushNamed(context, '/STTS751_exp');
                  },
                ),
                buildCardWithImage(
                  context,
                  'Relay Experiment',
                  'assets/images/relay_image-removebg-preview.png',
                  () {
                    Navigator.pushNamed(context, '/Relay_exp');
                  },
                ),
                buildCardWithImage(
                  context,
                  'CO2 Sensor',
                  'assets/images/Co2_Sensor_new.png',
                  () {
                    Navigator.pushNamed(context, '/co2Sensor');
                  },
                ),
                buildCardWithImage(
                  context,
                  'Weather Sensor',
                  'assets/images/Weather_sensor_widget-removebg-preview.png',
                  
                 
                  () {
                    Navigator.pushNamed(context, '/weather');
                  },
                ),
                buildCardWithImage(
                  context,
                  'Contact Us',
                  'assets/images/contact.jpg',
                  () {
                    Navigator.pushNamed(context, '/ContactUS');
                  },
                ),
              ],
            ),
          ),
        ),
            ),
       ),
      
        ],
    ),
    );
  }

  Widget buildCardWithImage(BuildContext context, String buttonText,
      String imagePath, Function() onPressed) {
    return InkWell(
      child: Container(
        height: 250, // Adjust card height as needed
        width: 250, // Adjust card width as needed
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                imagePath,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: onPressed,
              child: Text(
                buttonText,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
