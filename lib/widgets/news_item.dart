import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.article,
  });
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          article.image == null
              ? Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('News'),
                        Text(
                          'Cloud',
                          style: TextStyle(color: Colors.orange),
                        )
                      ],
                    ),
                  ),
                )
              : Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(article.image!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          const SizedBox(
            height: 10,
          ),
          Text(
            article.title!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            article.description!.split('.')[0],
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.right,
          )
        ],
      ),
    );
  }
}
