import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String category;
  final String selectedCategory;
  final Function()? onPressed;

  CategoryButton(this.category, this.selectedCategory, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: category == selectedCategory ? Colors.blue : null,
        onPrimary: Colors.white,
      ),
      child: Text(category),
    );
  }
}
