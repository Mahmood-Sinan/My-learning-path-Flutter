import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textController = TextEditingController();

  String _displayText = "Text will be displayed here";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          color: Colors.yellow[200],
          child: Column(
            children: [
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type Here",
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    //Get Data
                    print(_textController.text);
                    setState(() {
                      _displayText = _textController.text;
                    });
                  },
                  child: Text("Submit")),
              Text(_displayText),
            ],
          ),
        ),
      )),
    );
  }
}
