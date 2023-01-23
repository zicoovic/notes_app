import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/custom_icon.dart';
import 'package:notes_app/view/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

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
                  function: () => Navigator.pop(context),
                ),
                title: 'Edit Note',
              ),
              const SizedBox(
                height: 25,
              ),
              const CustomTextField(hint: 'Title'),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                hint: 'Content',
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
