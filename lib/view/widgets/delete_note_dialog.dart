import 'package:flutter/material.dart';

import '../../models/note_model.dart';

class DeleteNoteDialog extends StatelessWidget {
  const DeleteNoteDialog({
    Key? key,
    required this.note,
  }) : super(key: key);

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text('Are you sure you want delete this note?'),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      note.delete();
                      Navigator.canPop(context) ? Navigator.pop(context) : null;
                    },
                    child: const Text(
                      'Delete',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Cancel',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
