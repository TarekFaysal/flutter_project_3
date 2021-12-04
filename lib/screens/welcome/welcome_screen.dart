import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Learning Tabs"),
          bottom: TabBar(
            tabs: [
              Icon(Icons.ac_unit),
              Icon(Icons.face),
              Icon(Icons.access_alarm)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Emon"),
            ),
            Container(
              child: Center(
                child: ElevatedButton(
                  child: Text("Show SnackBar"),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        action: SnackBarAction(
                          label: "ok",
                          onPressed: () {},
                        ),
                        content: Text("This is working")));
                  },
                ),
              ),
            ),
            Center(
              child: Text("Chirangit Banik"),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 150,
                child: DrawerHeader(
                    decoration: BoxDecoration(color: Colors.green),
                    child: Text("Drawer header")),
              ),
              ListTile(
                onTap: () {
                  // write whataver, it will work
                  print("list item 1 is clicked");
                  Navigator.of(context).pop();
                },
                leading: Icon(Icons.face),
                title: Text("List item 1"),
              ),
              Divider(),
              ListTile(
                title: Text("List item 2"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
