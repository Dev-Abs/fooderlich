import 'package:flutter/material.dart';
import 'author_card.dart';


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
        child: Column(
          children: [
            AuthorCard(
              authorName: 'Abdullah U.',
              title: 'Smoothie',
              imageProvider: AssetImage('abdullahubaid.jpg'),
            ),
            
          ],)
      ),
    );
  }
}