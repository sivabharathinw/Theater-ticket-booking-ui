import "package:flutter/material.dart";

class MyAppbar extends AppBar {
  MyAppbar({ required Widget title, required List<Widget> actions})
    : super(
        title: Padding(padding: const EdgeInsets.only(top: 30.0), child: title),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: actions,
        toolbarHeight: 90      );
}
