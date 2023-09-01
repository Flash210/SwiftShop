import 'package:flutter/cupertino.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final IconData icon;

  CategoryItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 40, // Adjust the icon size as needed
        ),
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
