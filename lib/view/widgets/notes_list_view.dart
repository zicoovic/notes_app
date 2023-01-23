import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 100,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(4.0),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}
