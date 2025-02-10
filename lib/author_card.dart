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
        ],
        
      ),
    );
  }
}