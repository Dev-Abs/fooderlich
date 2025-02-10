import 'package:flutter/material.dart';


class Card1 extends StatelessWidget {
  const Card1({super.key});
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Abdullah Ubaid'; 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('/dough.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Stack(
          children: <Widget>[
            Text(category, style: Theme.of(context).textTheme.bodySmall),
            Positioned(
              top: 20,
              child: Text(title, style: Theme.of(context).textTheme.headlineSmall),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(description, style: Theme.of(context).textTheme.bodySmall),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text(chef, style: Theme.of(context).textTheme.bodySmall),
            ),
          ],
        ),
      ),
    );
  }
}