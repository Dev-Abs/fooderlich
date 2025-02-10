import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Pizza';
  final String description = 'Learn to make the perfect pizza.';
  final String chef = 'Abdullah Ubaid';

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('/pizza2.jpeg'),
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