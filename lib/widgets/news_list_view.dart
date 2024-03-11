import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_item.dart';
import 'package:news_app/models/article_model.dart';

// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
  NewsListView({
    super.key,
    required this.articles,
  });

  List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsItem(
            article: articles[index],
          );
        },
      ),
    );
  }
}
