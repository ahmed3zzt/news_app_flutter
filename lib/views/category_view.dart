import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category, required this.lang});
  final String category, lang;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Row(
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
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          NewsListBuilder(
            category: category,
            lang: lang,
          ),
        ],
      ),
    );
  }
}
