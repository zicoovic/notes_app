import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

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
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                    child: const Text(
                      'Delete',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.canPop(context) ? Navigator.pop(context) : null;
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
