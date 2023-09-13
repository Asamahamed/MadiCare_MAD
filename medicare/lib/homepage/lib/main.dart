import 'package:flutter/material.dart';
import 'blank_page[1].dart';
import 'blank_page2[1].dart';
import 'blank_page3[1].dart';
import 'blue_container.dart';
import 'blue_column _box[1].dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContainerPage(),
    );
  }
}

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images.png', // Replace with the path to your image
                width: 150.0,
                height: 150.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 180.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BlankPage(),
                        ));
                      },
                      child: BlueContainer('Clinic', 'Visit'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BlankPage2(), // Navigate to BlankPage2
                        ));
                      },
                      child: BlueContainer('Home', 'Visit'),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Column(
                  children: [
                    BlueColumnBox('What are the symptoms?',''),
                    SizedBox(height: 10.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 250.0),
                          child: Text(
                            'Temperature',
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 300.0),
                          child: Text(
                            'Fever',
                            style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BlankPage3(), // Navigate to BlankPage3
                        ));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: BlueColumnBox('Popular doctors',''),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}