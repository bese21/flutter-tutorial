import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
// 1
  final String category = 'Editor\'s Choice';

  final String title = 'The Art of Dough';

  final String description = 'Learn to make the perfect bread.';

  final String chef = 'mother\'s kitchen';

// 2
  @override
  Widget build(BuildContext context) {

    return   Container(
      margin: EdgeInsets.all(50),
      padding: const EdgeInsets.all(26),
    

      constraints: const BoxConstraints.expand(width:450, height:450),

      decoration: const BoxDecoration(
        color: Colors.black26,
        image: DecorationImage(

          image: AssetImage("assets/images/befe1.png"),
          fit: BoxFit.cover,
        ),

        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),


     child: Stack(
        children: [
// 8
     Positioned(
         child: Text(
            category,
            style:const TextStyle(
              color: Colors.white,
            )
          ),
     ),
    
      
// 9
          Positioned(
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                )
            ),
            
            top: 20,
          ),
// 10
          Positioned(
            child: Text(
              description,
              style: const TextStyle(
                  color: Colors.white,
                )
              
            ),
            bottom: 30,
            right: 0,
          ),
// 11
          Positioned(
            child: Text(
              chef,
              style: const TextStyle(
                  color: Colors.white,
                )
             
            ),
            bottom: 10,
            right: 0,
          )
        ],
      ),
    );
  }
}
