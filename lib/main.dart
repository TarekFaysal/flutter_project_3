import 'package:flutter/material.dart';
import 'package:flutter_project_3/screens/create_note/create_note_screen.dart';
import 'package:flutter_project_3/screens/note_details/note_details_screen.dart';
import 'package:flutter_project_3/screens/notes/notes_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
        textTheme: TextTheme(
            bodyText1: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            bodyText2: TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),

        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(20),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all(Colors.black))),
        //textTheme: Text,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NotesScreen(),
      routes: {
        NoteDetailsScreen.routeName: (ctx) => NoteDetailsScreen(),
        CreateNoteScreen.routeName: (ctx) => CreateNoteScreen(),
        NotesScreen.routeName: (ctx) => NotesScreen()
      },
    );
  }
}
