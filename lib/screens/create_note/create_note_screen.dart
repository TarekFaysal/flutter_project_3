import 'package:flutter/material.dart';
import 'package:flutter_project_3/model/note.dart';
import 'package:flutter_project_3/screens/notes/notes_screen.dart';

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
                        // add this note to the list
                        Note note = Note(title, description);
                        Note.notes.add(note);

                        //go to notescreen
                        Navigator.pop(context);
                        Navigator.pushReplacementNamed(
                            context, NotesScreen.routeName);
                      }
                    },
                    child: Text("Create"))
              ],
            ),
          ),
        ));
  }
}
