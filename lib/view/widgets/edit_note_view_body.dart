import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/colors_list_view.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/custom_icon.dart';
import 'package:notes_app/view/widgets/custom_text_field.dart';

import '../../constant.dart';
import 'add_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              CustomAppBar(
                icon: CustomIcon(
                  icon: Icons.check,
                  onPressed: () {
                    widget.note.title = title ?? widget.note.title;
                    widget.note.subTitle = content ?? widget.note.subTitle;
                    widget.note.save();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    Navigator.pop(context);
                  },
                ),
                title: 'Edit Note',
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextField(
                onChanged: (value) {
                  title = value;
                },
                hint: widget.note.title,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                onChanged: (value) {
                  content = value;
                },
                hint: widget.note.subTitle,
                maxLines: 5,
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: EditNotesColorsList(
                    note: widget.note,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
