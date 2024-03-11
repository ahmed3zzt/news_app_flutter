import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, entertaiment});

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/entertaiment.jpg',
      categoryName: 'Ar General',
      lang: 'ar',
      category: '*',
    ),
    CategoryModel(
      image: 'assets/health.jpg',
      categoryName: 'En General',
      category: '*',
      lang: 'en',
    ),
    CategoryModel(
        image: 'assets/sports.jpeg',
        categoryName: 'Ar Sports',
        lang: 'ar',
        category: 'sports'),
    CategoryModel(
      image: 'assets/sports.jpeg',
      categoryName: 'En Sports',
      lang: 'en',
      category: 'sports',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Ar Technology',
      lang: 'ar',
      category: 'technology',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'En Technology',
      lang: 'en',
      category: 'technology',
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
