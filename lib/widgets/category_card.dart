import 'package:flutter/material.dart';
import 'package:news_app_alone/models/category_model.dart';

import 'custom_text.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.categoryModel,
  });

  final CategoryModel categoryModel ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        height: 110,
        width: 200,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue,
          image:  DecorationImage(
              image: AssetImage(categoryModel.image,
              ),
              fit: BoxFit.fill
          ),
        ),
        child:  Center(
            child:
            CustomText(text: categoryModel.text, color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500,
            )
        ),
      ),
    );
  }
}


