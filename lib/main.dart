import 'package:flutter/material.dart';

import 'view/widgets/notes_view_body_widget.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: const Scaffold(
        body: NotesViewBody(),
      ),
    );
  }
}
