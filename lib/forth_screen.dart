import 'package:flutter/material.dart';
import 'package:inherited/main.dart';

class ForthScreen extends StatelessWidget {
  const ForthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = PersonInherited.of(context)!.person;

    // It can also be written this way. the former is a static method wrapper around the later.
    // final name =
    //     context.dependOnInheritedWidgetOfExactType<PersonInherited>()!.person;
    return Text(
      name.name,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
    );
  }
}
