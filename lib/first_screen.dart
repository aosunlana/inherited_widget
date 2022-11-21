

import 'package:flutter/material.dart';
import 'package:inherited/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SecondScreen();
  }
}