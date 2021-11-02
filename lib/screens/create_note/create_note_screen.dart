import 'package:flutter/material.dart';

class CreateNoteScreen extends StatefulWidget {
  static const routeName = "/createNote";
  const CreateNoteScreen({Key key}) : super(key: key);

  @override
  State<CreateNoteScreen> createState() => _CreateNoteScreenState();
}

class _CreateNoteScreenState extends State<CreateNoteScreen> {
  TextEditingController titleEditingController = TextEditingController();
  TextEditingController descritionEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create Note"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Please enter note title";
                    }
                  },
                  controller: titleEditingController,
                  decoration:
                      InputDecoration(hintText: "title", labelText: "title *"),
                ),
                TextFormField(
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "Please enter note description";
                    }
                  },
                  controller: descritionEditingController,
                  decoration: InputDecoration(
                      hintText: "description", labelText: "descrition *"),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        String title = titleEditingController.text;
                        String description = descritionEditingController.text;
                        print(title + description);
                      }
                    },
                    child: Text("Create"))
              ],
            ),
          ),
        ));
  }
}
