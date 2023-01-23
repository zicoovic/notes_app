import 'package:flutter/material.dart';
import 'package:notes_app/view/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 32,
          ),
          CustomTextField(title: 'Title'),
          SizedBox(
            height: 15,
          ),
          CustomTextField(title: 'Content'),
        ],
      ),
    );
  }
}
