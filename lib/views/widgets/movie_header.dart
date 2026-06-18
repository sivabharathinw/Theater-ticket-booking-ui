import 'package:flutter/material.dart';

class MovieHeader extends StatelessWidget {
  final String imageUrl;
  final Widget card;

  const MovieHeader({
    super.key,
    required this.imageUrl,
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            left: 20,
            right: 20,
            bottom: 0,
            top: 60,
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