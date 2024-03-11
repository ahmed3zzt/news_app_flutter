import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 9),
      height: 120,
      width: 190,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          category.categoryName,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
