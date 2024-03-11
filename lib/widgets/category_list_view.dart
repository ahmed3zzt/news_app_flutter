import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, entertaiment});

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/entertaiment.jpg',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.jpg',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science.jpg',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
