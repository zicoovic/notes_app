import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_app_bar.dart';
import 'custom_icon.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            CustomAppBar(
              icon: CustomIcon(
                icon: Icons.search,
                onPressed: () {},
              ),
              title: 'Note',
            ),
            const Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
