import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final BoxShape shape;
  final double borderRadius;
  final BorderRadiusGeometry? customBorderRadius;
  final BoxBorder? border;

  const AppContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(10),
    this.backgroundColor = Colors.white,
    this.borderRadius = 12,
    this.customBorderRadius,
    this.width,
    this.height,
    this.margin,
    this.shape = BoxShape.rectangle,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: shape,
        border: border,
        borderRadius: shape == BoxShape.rectangle 
            ? (customBorderRadius ?? BorderRadius.circular(borderRadius)) 
            : null,
      ),
      child: child,
    );
  }
}
