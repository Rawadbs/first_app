import 'package:flutter/material.dart';

import 'home_page.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 117, left: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/OIG2-removebg-preview.png"),
            const Text(
              "Select the favorite's menu",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              "Now eat well, don’t leave the house, you can choose your favorite food only with one click",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  fixedSize: const Size(159, 57)),
              child: const Text("Next"),
            )
          ],
        ),
      ),
    );
  }
}
