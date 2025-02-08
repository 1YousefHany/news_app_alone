import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  final List<CategoryModel> categories =  const [
    CategoryModel(image: 'assets/images/technology.jpeg', text: 'Business'),
    CategoryModel(image: 'assets/images/entertaiment.avif', text: 'Technology'),
    CategoryModel(image: 'assets/images/business.avif', text: 'Entertainment'),
    CategoryModel(image: 'assets/images/sports.avif', text: 'Sports'),
    CategoryModel(image: 'assets/images/health.avif', text: 'Health'),
    CategoryModel(image: 'assets/images/science.avif', text: 'Science'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context , index) {
            return CategoryCard(categoryModel: categories[index],
            );
          }),
    );
  }
}