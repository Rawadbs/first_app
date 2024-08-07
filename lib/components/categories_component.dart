import 'package:flutter/material.dart';

class CategoriesComponent extends StatelessWidget {
  const CategoriesComponent(
      {super.key, required this.image, required this.title});

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86,
      height: 88,
      decoration: BoxDecoration(
          color: const Color.fromARGB(179, 236, 231, 231),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Image.asset(image),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
