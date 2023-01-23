import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, required this.function});

  final IconData icon;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.05),
      ),
      child: IconButton(
        alignment: Alignment.center,
        iconSize: 28,
        padding: EdgeInsets.zero,
        onPressed: function,
        icon: Icon(
          icon,
        ),
      ),
    );
  }
}
