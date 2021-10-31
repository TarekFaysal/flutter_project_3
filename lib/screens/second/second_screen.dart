import 'package:flutter/material.dart';
import 'package:flutter_project_3/model/user.dart';
import 'package:flutter_project_3/screens/third/third_screen.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = "/second";
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context).settings.arguments as User;

    return Scaffold(
      appBar: AppBar(
        title: Text(user.address),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text("Go to Third Screen"),
          onPressed: () {
            Navigator.pushNamed(context, ThirdScreen.routeName);
          },
        ),
      ),
    );
  }
}
