import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_icon.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
                function: () {},
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
