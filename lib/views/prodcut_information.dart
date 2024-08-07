import 'package:first_app/views/check.dart';
import 'package:flutter/material.dart';

class ProductInformation extends StatefulWidget {
  const ProductInformation({Key? key}) : super(key: key);

  @override
  _ProductInformationState createState() => _ProductInformationState();
}

class _ProductInformationState extends State<ProductInformation> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                color: isFavorite ? Colors.red : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset('images/Burger.jpeg'),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Beef Burger",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "IDK 20k",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 18, left: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_pin, color: Colors.lightBlueAccent),
                      Text(
                        "Mcdi",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.lightBlueAccent),
                      Text(
                        "4.7",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Description",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 30)),
                  const SizedBox(height: 10),
                  const Text(
                      "A burger is a patty of ground beef grilled and placed between two halves of a bun. Slices of raw onion, lettuce, bacon, mayonnaise, and other ingredients add flavor. Burgers are considered an American food but are popular around the world.",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.grey)),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(146, 57),
                                backgroundColor: Colors.lightBlueAccent),
                            onPressed: () {},
                            child: const Text(
                              "Chat",
                              style: TextStyle(fontSize: 15),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(144, 57),
                                backgroundColor: Colors.lightBlueAccent),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Check()));
                            },
                            child: const Text(
                              "Buy",
                              style: TextStyle(fontSize: 15),
                            )),
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
