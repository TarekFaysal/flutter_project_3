import 'package:flutter/material.dart';
import 'package:flutter_project_3/model/note.dart';
import 'package:flutter_project_3/screens/notes/notes_screen.dart';

class NoteDetailsScreen extends StatefulWidget {
  static const routeName = "/noteDetails";
  const NoteDetailsScreen({Key key}) : super(key: key);

  @override
  State<NoteDetailsScreen> createState() => _NoteDetailsScreenState();
}

class _NoteDetailsScreenState extends State<NoteDetailsScreen> {
  TextEditingController titleEditingController = TextEditingController();
  TextEditingController descriptionEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Note note = ModalRoute.of(context).settings.arguments as Note;
    titleEditingController = TextEditingController(text: note.title);
    descriptionEditingController =
        TextEditingController(text: note.description);
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  // remove note from the list

                  Note.notes.remove(note);

                  //go to the notescreen
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(
                      context, NotesScreen.routeName);
                },
                icon: Icon(Icons.delete))
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  style: Theme.of(context).textTheme.bodyText1,
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "please enter title";
                    }
                  },
                  controller: titleEditingController,
                  decoration: InputDecoration(
                      hintText: "title",
                      labelText: "title *",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                      labelStyle: Theme.of(context).textTheme.bodyText2),
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.bodyText1,
                  validator: (value) {
                    if (value.isNotEmpty) {
                      return null;
                    } else {
                      return "please enter description";
                    }
                  },
                  controller: descriptionEditingController,
                  decoration: InputDecoration(
                      hintText: "description",
                      labelText: "description *",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                      labelStyle: Theme.of(context).textTheme.bodyText2),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      String title = titleEditingController.text;
                      String description = descriptionEditingController.text;
                      print(title + description);

                      for (Note note1 in Note.notes) {
                        if (note1.id == note.id) {
                          note1.title = title;
                          note1.description = description;
                        }
                      }
                    }

                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(
                        context, NotesScreen.routeName);
                  },
                  child: Text("Save"),
                )
              ],
            ),
          ),
        ));
  }
}
