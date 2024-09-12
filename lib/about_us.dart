import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AboutUsPage(),
    );
  }
}

class AboutUsPage extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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

            /*AppBar(
              title: Text(
                'ABOUT US',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 81, 34, 3),
                ),
              ),
            ),*/

            Container(
              // height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/About_us_page_final.png'), // Replace with your background image path
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Preamble',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'About iHub-AWaDH',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 2, 2, 2)),
                    ),
                    SizedBox(height: 10),
                      SizedBox(height: 10),
                      Text(
                        'iHub-AWaDH, which stands for Innovation Hub for Agriculture and Water Technology Development Hub, is a dedicated initiative hosted at IIT Ropar Technology and Innovation Foundation established under National Mission on Interdisciplinary Cyber Physical Systems by Department of Science and Technology, Government of India. It aims to foster and promote deep tech innovation in the domains of Agriculture and Water, leveraging cutting-edge technologies like Cyber Physical Systems (CPS), Internet of Things (IoT), Artificial Intelligence (AI), and more. The iHub-AWaDH plays a pivotal role in accelerating the growth of startups, driving research, and building a strong ecosystem to address critical challenges in the agricultural and water sectors. Through strategic partnerships, incubation support, and collaborative programs, iHub-AWaDH aims to bring positive transformation and sustainable solutions for a better future.',
                        style: TextStyle(color: Color.fromARGB(255, 6, 6, 6)),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'CPS Lab Proposal',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 4, 4, 4)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Introduction',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 3, 3, 3)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Cyber-physical systems (CPS) play a pivotal role in shaping the future of various industries and societal domains. Their importance lies in their ability to bridge the gap between the digital world of computing and the physical world of machinery and processes. CPS serves as the foundation for Internet of Things (IoT), providing the necessary hardware and software infrastructure to connect and control the physical devices in the IoT ecosystem. The data collected from IoT devices is often processed and analyzed by CPS to make real-time decisions and trigger appropriate actions. The IoT lab is one of the crucial elements of the CPS lab.',
                        style: TextStyle(color: Color.fromARGB(255, 5, 4, 4)),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Objectives',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 5, 3, 3)),
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ObjectiveListItem(
                              number: '1',
                              text:
                                  'Education and Training: To provide professionals, researchers, and students with real-world knowledge and abilities in IoT-related smart technologies.'),
                          ObjectiveListItem(
                              number: '2',
                              text:
                                  'Research and Development: To promote and aid in the research activities in the IoT sector, examining fresh concepts and creating ground-breaking solutions.'),
                          ObjectiveListItem(
                              number: '3',
                              text:
                                  'Prototyping and Testing: To offer a platform for the prototyping and testing of IoT gadgets, sensors, and smart solutions software.'),
                          ObjectiveListItem(
                              number: '4',
                              text:
                                  'Collaboration: Encourage students, researchers, business leaders, and other stakeholders to work together to share information and create cutting-edge IoT solutions.'),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Lab Activities and Services',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 2, 2, 2)),
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LabActivityListItem(
                              text:
                                  'Workshops and training sessions: Hold frequent workshops and training sessions to inform participants about IoT technologies, smart home ideas, industrial solutions and practical CPS & IoT application development.'),
                          LabActivityListItem(
                              text:
                                  'Research initiatives: Assemble research teams to work on CPS & IoT initiatives with academic institutions and business partners. This can entail investigating new sensor technologies, improving energy effectiveness, strengthening security and privacy, or creating original apps.'),
                          LabActivityListItem(
                              text:
                                  'Prototyping and Testing: Make tools and support available for prototyping and testing CPS & IoT applications and devices, enabling users to test out various configurations and situations.'),
                          LabActivityListItem(
                              text:
                                  'Consultancy: Provide advisory services to people, businesses, and organizations interested in putting smart industrial ideas into practice. This could involve system integration, architecture design, and best practices for security and privacy.'),
                          LabActivityListItem(
                              text:
                                  'Community Engagement: Host competitions, hackathons, and events to involve the neighborhood, encourage creativity, and highlight the IoT\'s possibilities for smart solutions.'),
                        ],
                      ),
                      // Add more Text widgets for other sections
                    ],
                  ),
                ),
              ),
          ],
            ),
          
            
       ),
          
        );
      
       
  
   
  }
}

class ObjectiveListItem extends StatelessWidget {
  final String number;
  final String text;

  const ObjectiveListItem({
    Key? key,
    required this.number,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$number. ',
            style: TextStyle(color: const Color.fromARGB(255, 10, 7, 7)),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class LabActivityListItem extends StatelessWidget {
  final String text;

  const LabActivityListItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check,
            color: Colors.black,
            size: 16,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
