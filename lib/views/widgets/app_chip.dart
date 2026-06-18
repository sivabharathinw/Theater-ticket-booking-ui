import "package:flutter/material.dart";
import "package:movie_booking/ui.dart";

class AppChip extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const AppChip({

    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: AppText(label),
      onSelected: (bool selected) {
        if (selected) {
          onPressed();
        }
      },
    );
  }
}