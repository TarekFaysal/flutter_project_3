import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static const routeName = "/third";
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
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
