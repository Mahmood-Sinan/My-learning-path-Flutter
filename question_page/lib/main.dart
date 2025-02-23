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
          primaryColor: Colors.blue,
          appBarTheme: AppBarTheme(backgroundColor: Colors.yellow)),
      home: question_page(),
    );
  }
}

class question_page extends StatelessWidget {
  const question_page({super.key});
  final String question = "Who is the father of our nation ?";
  final String questionno = "1";

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 216, 255, 243),
          appBar: AppBar(
            toolbarHeight: 100,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("lib/assets/backward.png"),
                ),
                Center(
                    child: Text(
                  "QUESTION $questionno",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("lib/assets/forward.png"),
                )
              ],
            ),
            backgroundColor: Color.fromARGB(255, 216, 255, 243),
          ),
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22.0),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    child: Image.asset(
                      "lib/assets/Rectangle.png",
                      width: double.infinity,
                      height: screenheight,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: screenheight / 100,
                  child: CircleAvatar(
                    radius: screenwidth / 17,
                    backgroundColor: Color.fromARGB(255, 28, 106, 109),
                    child: Center(
                        child: Text(
                      questionno,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24),
                    )),
                  ),
                ),
              ],
            ),
          )

          // body: Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       CircleAvatar(
          //         radius: 40,
          //         backgroundColor: Colors.blue,
          //         child: Icon(
          //           Icons.star,
          //           color: Colors.white,
          //         ),
          //       ),
          //       SizedBox(height: 0),
          //       Image.asset("lib/assets/Rectangle.png",
          //           width: 500, height: 500, fit: BoxFit.contain),
          //     ],
          //   ),
          // ),
          ),
    );
  }
}
