import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue,
          appBarTheme: AppBarTheme(backgroundColor: Colors.yellow)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String name = "CrossRoads";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          print("Text Button Clicked");
                        },
                        child: Text("Click Me"),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.mic))
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Text Button Clicked");
                    },
                    child: Text("Click Me"),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red, //i think the screen is 400 x 800
                borderRadius: BorderRadius.circular(200),
                border: Border.all(
                  color: Colors.blue,
                  width:10,),
              ),
              child: Center(child: Text("Simple Text")),
            )
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          print("Text Button Clicked");
                        },
                        child: Text("Click Me"),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.mic))
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Text Button Clicked");
                    },
                    child: Text("Click Me"),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
