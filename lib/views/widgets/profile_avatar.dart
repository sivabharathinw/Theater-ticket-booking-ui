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
      padding:EdgeInsets.only(top:20),
     child: CircleAvatar(
      radius: size / 2,
      backgroundImage: NetworkImage(imageUrl?? "https://www.profilepicture.ai/free-pfp-maker"),

      ),
    );
  }
}
