import 'package:flutter/material.dart';

class AppChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const AppChip({
    super.key,
    required this.label,
    required this.onPressed,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: isSelected ? Colors.orange : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1),
        side: BorderSide(color: Colors.grey.shade300),
      ),
    );
  }
}
