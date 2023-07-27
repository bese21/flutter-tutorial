import 'package:flutter/material.dart';



//import 'card1.dart';
//import 'them.dart';
void main() {
  // 1
  runApp(const FavIcon());
}

class FavIcon extends StatefulWidget {
  const FavIcon({Key? key}) : super(key: key);

  @override
  State<FavIcon> createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  // 2
 bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
     
    // 3
   
    
    return IconButton(
// 1
// ignore: dead_code
icon: Icon(_isFavorited ? Icons.favorite:Icons.favorite_border),
iconSize: 30,
// 2
color: Colors.red[400],
onPressed: () {
// 3


setState(() {
 
  print(_isFavorited);
   print('presses');
_isFavorited = !_isFavorited;
print(_isFavorited);
print('here');
});
print(_isFavorited);;
},
);
            
  }
}
