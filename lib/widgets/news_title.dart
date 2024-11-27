import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({super.key, required this.news});
  final NewsModel news;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            news.image ?? 'assets/technology.jpeg',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                'assets/technology.jpeg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          news.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          news.description ?? '',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          maxLines: 2,
        ),
      ],
    );
  }
}
