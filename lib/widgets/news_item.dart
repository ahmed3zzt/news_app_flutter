import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.article,
  });
  final ArticleModel article;
  final String defaultImageUrl =
      'https://img.freepik.com/free-vector/female-hands-holding-mobile-phone-with-newsletter-screen-woman-reading-world-news-using-smartphone-app-internet-flat-vector-illustration-newspaper-information-press-media-concept_74855-24529.jpg?w=1380&t=st=1710155702~exp=1710156302~hmac=b0331d380bfb91390a62d10ff6000caa4fead562a8576c5edd9047b3d2159892';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(article.image ?? defaultImageUrl),
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
