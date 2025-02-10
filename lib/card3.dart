import 'package:flutter/material.dart';


class Card3 extends StatelessWidget {
  const Card3({super.key});
  final String category = 'Editor\'s Choice';
  final String title = 'Art of Jollof Rice';
  final String description = 'Learn to make the perfect jollof rice.';
  final String chef = 'Abdullah Ubaid';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('/jollof.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Stack(
          children: <Widget>[
            Text(category, style: Theme.of(context).textTheme.bodySmall),
            Positioned(
              top: 20,
              child: Text(title, style: Theme.of(context).textTheme.headlineMedium),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(description, style: Theme.of(context).textTheme.bodySmall),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text(chef, style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
      ),
    );
  }
}