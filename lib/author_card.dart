import 'package:flutter/material.dart';
import 'circle_image.dart';

import 'favorite_icon.dart';
class AuthorCard extends StatefulWidget {
// 1
  final String authorName;
  final String title;
  final ImageProvider imageProvider;
  const AuthorCard({
    Key ?key,
    required this.authorName,
    required this.title,
    required this.imageProvider,
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
// 2
  @override
  Widget build(BuildContext context) {
    
    return Container(
padding: const EdgeInsets.all(2),
child: Row(

children: [
// 1
Row(children: [
CircleImage(imageProvider: widget.imageProvider, imageRadius:
28),
// 2
const SizedBox(width: 25),
// 3
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
widget.authorName,
style: TextStyle(
  color: Colors.white
),

),
Text(
  style: TextStyle(color: Colors.white),
widget.title,

),

],
), 
 FavIcon(),

]),

],
),
);
  }
}
