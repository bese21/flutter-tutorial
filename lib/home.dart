import 'package:flutter/material.dart';
import 'card1.dart';
// 1
import 'card2.dart';
import 'card3.dart';
class Home extends StatefulWidget {
  const Home({Key ?key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
// 8
  static List<Widget> pages = <Widget>[
    const Card1()  ,
    const Card2(),
    const Card3(),
  ];
// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(

currentIndex: _selectedIndex,

            onTap: _onItemTapped,
selectedItemColor:Colors.green,

unselectedItemColor: Colors.grey,
items: const <BottomNavigationBarItem>[
  
BottomNavigationBarItem(
icon: Icon(Icons.home),
label: 'home'),
BottomNavigationBarItem(
icon: Icon(Icons.card_giftcard),
label: 'card1'),
BottomNavigationBarItem(
icon: Icon(Icons.card_giftcard),
label: 'Card2'),
    ] ) );
  }
}
