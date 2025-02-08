import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      mini: true,
      child:  Icon(Icons.keyboard_double_arrow_up,color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}
