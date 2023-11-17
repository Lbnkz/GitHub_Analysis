import 'package:flutter/material.dart';


class CustomCircleAvatar extends StatelessWidget {
  final double size;
  final String imageUrl;

  const CustomCircleAvatar({super.key, required this.size, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
          radius: size,
        ),
    );
  }
}