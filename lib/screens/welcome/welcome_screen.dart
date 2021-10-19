import 'package:flutter/material.dart';

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
          title: Text("Hello world"),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "This is a text",
                style: textStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: buttonStyle,
                      onPressed: null,
                      child: Text(
                        "Button 1",
                        style: textStyle,
                      )),
                  Container(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: buttonStyle,
                      onPressed: null,
                      child: Text(
                        "Button 2",
                        style: textStyle,
                      ))
                ],
              ),
              Text(
                "This is another text",
                style: textStyle,
              ),
              Text(
                "This is the other text",
                style: textStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: buttonStyle,
                      onPressed: null,
                      child: Text(
                        "Button 3",
                        style: textStyle,
                      )),
                  Container(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: buttonStyle,
                      onPressed: null,
                      child: Text(
                        "Button 4",
                        style: textStyle,
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
