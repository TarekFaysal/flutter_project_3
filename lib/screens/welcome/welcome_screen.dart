import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.agriculture),
          onPressed: () {},
        ),
        backgroundColor: Colors.green,
        title: Text("Our first project"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text("Hello")),
              Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Barisal")))
            ],
          ),
          Row(
            children: [
              Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text("Hello")),
              Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Barisal")))
            ],
          ),
          Row(
            children: [
              Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text("Hello")),
              Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Barisal")))
            ],
          ),
        ],
      ),
    );
  }
}
