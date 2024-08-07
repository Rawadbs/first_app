import 'package:first_app/views/prodcut_information.dart';
import 'package:flutter/material.dart';

class PopularComponent extends StatelessWidget {
  const PopularComponent(
      {super.key,
      required this.image,
      required this.mealName,
      required this.location,
      required this.price});

  final String image;
  final String mealName;
  final String location;
  final String price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 186,
        height: 238,
        decoration: BoxDecoration(
            color: const Color.fromARGB(179, 236, 231, 231),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Image.asset(image),
            Text(
              mealName,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              location,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              price,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProductInformation()));
      },
    );
  }
}
