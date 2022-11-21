import 'package:flutter/material.dart';
import 'package:inherited/main.dart';

class ForthScreen extends StatelessWidget {
  const ForthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = PersonInherited.of(context)!.person;
    return Text(name.name);
  }
}
