import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/add_note_button_sheet.dart';
import 'package:notes_app/view/widgets/notes_view_body_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteButtonSheet();
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
