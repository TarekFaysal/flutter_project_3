import 'package:flutter/material.dart';
import 'package:flutter_project_3/model/user.dart';
import 'package:flutter_project_3/screens/second/second_screen.dart';
import 'package:flutter_project_3/screens/third/third_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String firstName2 = "Jihad";
  String lastName2 = "Hossain";
  String address = "Kaunia, Barisal";

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
              User user = new User(
                  firstName: firstName2, lastName: lastName2, address: address);
              Navigator.pushNamed(context, SecondScreen.routeName,
                  arguments: user);
            },
            child: Text("Go to second screen"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, ThirdScreen.routeName);
            },
            child: Text("Go to third screen"),
          ),
        ]),
      ),
    );
  }
}
