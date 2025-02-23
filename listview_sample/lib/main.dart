import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: ListViewSample(),
    );
  }
}

class ListViewSample extends StatelessWidget {
  const ListViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Sample Project"),
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text("Person $index"),
                subtitle: Text("Message $index"),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green,
                  backgroundImage: AssetImage("assets/images/istockphoto-1218693828-612x612.jpg"),),
                trailing: Text("$index:00 PM"),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: 30),
      ),
    );
  }
}
