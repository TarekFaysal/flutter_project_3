import 'package:flutter/material.dart';
import 'package:flutter_project_3/screens/third/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text("Go to Third Screen"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ThirdScreen()));
          },
        ),
      ),
    );
  }
}
