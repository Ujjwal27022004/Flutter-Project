// Importing important packages require to connect
// Flutter and Dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title of the application
      title: 'Hello World Demo Application',
      // theme of the widget
      theme: ThemeData(
          // primarySwatch: Colors.purple,
          scaffoldBackgroundColor: Colors.grey[800]),
      // Inner UI of the application
      home: const MyHomePage(title: 'Home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage ({Key? key, required this.title}) : super(key: key);
  final String title;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            
            Container(
              child:Image.asset('images/assets/uj1.jpg'),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text("Hello",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      letterSpacing: 3,
                    )),
              ),
            ),
            Container(
              child: Text(
                "Welcome to UJJWAL'S Era",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    letterSpacing: 4),
              ),
            ),
            Container(

            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(Icons.home,color: Colors.grey,),
            ),
            label: "Home",
            activeIcon: Icon(Icons.home_filled),
            backgroundColor: Colors.black,
            tooltip: 'hi'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.grey,),
            label: "Home",
            activeIcon: Icon(Icons.search_sharp),
            backgroundColor: Colors.black,
            tooltip: "hi"

            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cabin,color: Colors.grey,),
            label: "Cabin",
            activeIcon: Icon(Icons.cable_sharp),
            // backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email,color: Colors.grey,),
            label: "Cabin",
            activeIcon: Icon(Icons.email_sharp),
            // backgroundColor: Colors.black,
          )
        ],


      ),
    );
  }
}
