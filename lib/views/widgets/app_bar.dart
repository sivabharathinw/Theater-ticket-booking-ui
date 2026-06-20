import "package:flutter/material.dart";

class MyAppbar extends AppBar {
  MyAppbar({
    super.key,
    required Widget title,
    required List<Widget> actions,
    bool centerTitle = false,
    double toolbarHeight = 90,
    EdgeInsetsGeometry titlePadding = const EdgeInsets.only(top: 20),
    Widget? leading,
  }) : super(
         title: Padding(padding: titlePadding, child: title),
         backgroundColor: Colors.transparent,
         elevation: 0,
         iconTheme: const IconThemeData(color: Colors.black),
         actions: actions,
         centerTitle: centerTitle,
         toolbarHeight: toolbarHeight,
         leading: leading,
       );
}
