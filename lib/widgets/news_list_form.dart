import 'package:flutter/material.dart';

import 'custom_text.dart';

class NewsListForm extends StatelessWidget {
  const NewsListForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          SizedBox(
            height: 220,
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/business2.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomText(
            text:
            'The puzzle you are looking for its place, life despite all the distance you travel and for it, but we are not aware of the secret that will lead us to salvation, to the meaning of becoming people nor to face it together and the chosen firmness,',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            maxLines: 2,
            textOverflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8,
          ),
          const CustomText(
            text:
            'اللغز الذي تبحث عن مكانه، الحياة رغم كل المسافة التي تقطعها ولأجله، ولكننا غير مدركين السر الذي',
            maxLines: 2,
            color: Colors.grey,
            textOverflow: TextOverflow.ellipsis,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
    );
  }
}
