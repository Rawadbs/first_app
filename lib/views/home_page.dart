import 'package:flutter/material.dart';
import '/components/popular_component.dart';
import '/components/categories_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Need food?",
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/Group 3144.png"),
            const Padding(
              padding: EdgeInsets.only(top: 45, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategoriesComponent(
                          image: "images/menu-1 1.png", title: "Burger"),
                      CategoriesComponent(
                          image: "images/cat-6 1.png", title: "Drink"),
                      CategoriesComponent(
                          image: "images/food-8 1.png", title: "Pizza"),
                    ],
                  ),
                  SizedBox(height: 65),
                  Text(
                    "Popular Now",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 29),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PopularComponent(
                            image: 'images/food-2 1.png',
                            mealName: 'Beef Burger',
                            location: 'Mcdi',
                            price: '10.0 SR'),
                        SizedBox(width: 20),
                        PopularComponent(
                            image: 'images/cat-2 1.png',
                            mealName: 'Pizza hot',
                            location: 'Pizza hut',
                            price: '20.0 SR'),
                        SizedBox(width: 20),
                        PopularComponent(
                            image: 'images/menu-4 1.png',
                            mealName: 'Sandwich',
                            location: 'Roti r',
                            price: '5.0 SR'),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
