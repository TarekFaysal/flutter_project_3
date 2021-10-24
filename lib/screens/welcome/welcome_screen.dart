import 'package:flutter/material.dart';
import 'package:flutter_project_3/screens/second/second_screen.dart';
import 'package:flutter_project_3/screens/third/third_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextStyle textStyle = TextStyle(color: Colors.blue, fontSize: 30);
  ButtonStyle buttonStyle =
      ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Screen"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            child: Text("Go to second screen"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()));
            },
            child: Text("Go to third screen"),
          ),
        ]),
      ),
    );
  }
}
