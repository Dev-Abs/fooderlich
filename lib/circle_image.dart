import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage(
    {
      super.key,
      this.imageProvider,
      required this.imageRadius,
    }
  );

  final ImageProvider? imageProvider;
  final double imageRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: imageRadius,
      backgroundImage: imageProvider,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    ); 
  }
}