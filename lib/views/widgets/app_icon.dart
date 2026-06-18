import "package:flutter/material.dart";
import "package:movie_booking/ui.dart";
class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;

  const AppIcon({

    required this.icon,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return
         Icon(
          icon,
          color: iconColor,
          size: size,
         );


  }
}