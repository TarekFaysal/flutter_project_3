import 'package:flutter/material.dart';
import 'package:flutter_project_3/screens/welcome/welcome_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Third Screen"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text("Go back"),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => WelcomeScreen()));
          },
        ),
      ),
    );
  }
}
