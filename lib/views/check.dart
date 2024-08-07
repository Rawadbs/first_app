import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
class Check extends StatelessWidget {
  const Check({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RiveAnimation.asset('animation/checkmark_icon.riv'),
    );

  }
}