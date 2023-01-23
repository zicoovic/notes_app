import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_button.dart';
import 'package:notes_app/view/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 25,
          ),
          CustomTextField(hint: 'Content', maxLines: 5),
          SizedBox(
            height: 25,
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
