import 'package:flutter/material.dart';

class MovieHeader extends StatelessWidget {
  final String imageUrl;
  final Widget card;
  final double height;

  const MovieHeader({
    super.key,
    required this.imageUrl,
    required this.card,
    this.height = 380,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(13)),
            child: Image.network(
              imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            left: 20,
            right: 20,
            top: 150,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: card,
            ),
          ),
        ],
      ),
    );
  }
}
