import 'package:flutter/material.dart';
import 'package:inherited/first_screen.dart';
import 'package:inherited/person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'Inherited Widget Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: PersonInherited(
          person: Person(),
          child: const FirstScreen(),
        ));
  }
}

class PersonInherited extends InheritedWidget {
  const PersonInherited({
    super.key,
    required this.child,
    required this.person,
  }) : super(child: child);

  @override
  final Widget child;
  final Person person;

  static PersonInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PersonInherited>();
  }

  @override
  bool updateShouldNotify(PersonInherited oldWidget) {
    return true;
  }
}
