import 'package:flutter/material.dart';

import 'custom_text.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 200,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.blue,
        image: const DecorationImage(
            image: AssetImage('assets/images/business.avif',
            ),
            fit: BoxFit.fill
        ),
      ),
      child: const Center(
          child:
          CustomText(text: 'Business',color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500,
          )
      ),
    );
  }
}


