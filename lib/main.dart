import 'package:flutter/material.dart';

import 'home.dart';

//import 'card1.dart';
//import 'them.dart';
void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatefulWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  State<Fooderlich> createState() => _FooderlichState();
}

class _FooderlichState extends State<Fooderlich> {
  // 2
  @override
  Widget build(BuildContext context) {
    return MaterialApp(darkTheme:ThemeData.dark() ,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          
            appBar: AppBar(title: const Text('besufikad'),
            backgroundColor: Colors.cyan,
            ),
            body: const Home()));
  }
}
