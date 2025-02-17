import 'package:flutter/material.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({
    super.key,
    this.authorName,
    this.title,
    this.imageProvider,
  });

  final String? authorName;
  final String? title;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleImage(
            imageProvider: imageProvider,
            imageRadius: 28,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                authorName ?? 'Author Name',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                title ?? 'Title',
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          // fav icon button here
          IconButton(
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey,
            onPressed: () {
              const snackBar = SnackBar(content: Text('Added to Favorites'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
        
      ),
    );
  }
}