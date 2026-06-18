import "package:flutter/material.dart";

class ProfileAvatar extends StatelessWidget {
  final String? imageUrl;
  final double size;

  const ProfileAvatar({super.key,
    this.imageUrl,
    this.size = 40.0});

  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding:EdgeInsets.only(top:30),
     child: CircleAvatar(
      radius: size / 2,
      backgroundColor: Colors.grey.shade200,
      child: Icon(Icons.person,
          color: Colors.grey,
          size: size * 0.6),
     ), );
  }
}
