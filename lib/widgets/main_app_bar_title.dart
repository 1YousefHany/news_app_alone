import 'package:flutter/material.dart';

import '../helper/constants.dart';

DefaultTextStyle mainAppBarTitle(BuildContext context,mainAxisAlignment) {
  return DefaultTextStyle(
    style: const TextStyle(
      fontSize: 24,
      fontFamily: 'Playfair Display',
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    child: newsCloudText(context,mainAxisAlignment),
  );
}

Row newsCloudText(BuildContext context, dynamic mainAxisAlignment) {
  return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          'News',
          style: TextStyle(
              color:
              Theme.of(context).textTheme.titleLarge!.color ?? Colors.black),
        ),
        const Text(
          'Cloud',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
      ]);
}
