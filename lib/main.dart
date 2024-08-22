import 'package:flutter/material.dart';
import 'package:flutter_application_note_app/view/note_screen/note_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NoteListScreen(
        
      ),
    );
  }
}