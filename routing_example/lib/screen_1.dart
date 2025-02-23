import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text('Screen 1'),
          ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (ctx) {
                //       return ScreenTwo();
                //     },
                //   ),
                // );
                Navigator.of(context).pushNamed('screen_2');
              },
              child: Text("Goto Screen Two"))
        ],
      ),
    ));
  }
}
