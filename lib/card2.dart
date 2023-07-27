import 'package:flutter/material.dart';
import 'author_card.dart';
class Card2 extends StatelessWidget {
 


  const Card2({Key ?key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

 


    return Center(
      child: Container(
         margin: EdgeInsets.all(50),
        padding: const EdgeInsets.all(26),

        constraints: const BoxConstraints.expand(width: 450, height: 450),

        decoration: const BoxDecoration(
          color: Colors.black26,
          image: DecorationImage(
            image: AssetImage("assets/images/befe1.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
// 2
        child: Column(
          children:  [
            const AuthorCard(
      authorName: 'besufikad',
      title: 'software engineering',
      imageProvider: AssetImage('assets/images/befe.jpg'),
    ),
     Expanded(
// 2
              child: Stack(
                children: const [
// 3
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: TextStyle(color: Colors.green,
                                
                                      fontSize:30
                      
                      ),
                     
                    ),
                  ),
// 4
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style:TextStyle(color:Colors.white  ),
                      
                      ),
                    ),
                  ),
                ],
              ),
            ),
           
          ],

          
        ),
      ),
    );
  }
}
