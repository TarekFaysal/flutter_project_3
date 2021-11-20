import 'package:flutter/material.dart';
import 'package:flutter_project_3/screens/create_note/create_note_screen.dart';
import 'package:flutter_project_3/screens/note_details/note_details_screen.dart';
import 'package:flutter_project_3/screens/notes/notes_screen.dart';
import 'package:flutter_project_3/theme/custom_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme(),
      darkTheme: CustomTheme.darkTheme(),
      themeMode: CustomTheme.currentTheme(),
      home: NotesScreen(),
      routes: {
        NoteDetailsScreen.routeName: (ctx) => NoteDetailsScreen(),
        CreateNoteScreen.routeName: (ctx) => CreateNoteScreen(),
        NotesScreen.routeName: (ctx) => NotesScreen()
      },
    );
  }
}
