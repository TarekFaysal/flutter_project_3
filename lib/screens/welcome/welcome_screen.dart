import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                Text("Hello world"),
                ElevatedButton(onPressed: null, child: Text("Hello")),
                Text("Hi")
              ],
            ),
            Row(
              children: [
                Text("Hello world"),
                ElevatedButton(onPressed: null, child: Text("Hello")),
                Text("Hi")
              ],
            ),
            Row(
              children: [
                Text("Hello world"),
                ElevatedButton(onPressed: null, child: Text("Hello")),
                Text("Hi")
              ],
            )
          ],
        ));
  }
}
