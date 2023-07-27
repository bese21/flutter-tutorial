import 'package:flutter/material.dart';

class Card3 extends StatefulWidget {
const Card3({Key? key}) : super(key: key);

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
@override
Widget build(BuildContext context) {
return Center(
child: Container(
constraints: const BoxConstraints.expand(width: 350,height: 450),
decoration: const BoxDecoration(
image: DecorationImage(image: AssetImage('assets/images/befe1.png'),
fit: BoxFit.cover),
borderRadius: BorderRadius.all(Radius.circular(10.0)),
),
child: Stack(
children: [
Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
 Container(
// 3
padding: const EdgeInsets.all(16),
// 4
child: Column(
// 5
crossAxisAlignment: CrossAxisAlignment.start,
children:const [
// 6
 Icon(Icons.book, color: Colors.white, size: 40),
// 7


SizedBox(height: 8),
// 8
Text(
'Recipe Trends',
style: TextStyle(color: Colors.white),

// 9
),
SizedBox(height: 30),
],
),
),
// 10
            Center(
              child: Wrap(
// 12
                alignment: WrapAlignment.start,
// 13
                spacing: 12,
                runSpacing: 20,
// 14
                children:  [
                  Chip(onDeleted: () {
                        print('delete');
                  },
                    label: const Text('Healthy',
                    
                  )),
                    Chip(
                      onDeleted: () {
                        print('delete');
                      },
                      label: const Text(
                        'Healthy',
                      )),
                        Chip(
                      onDeleted: () {
                        print('delete');
                      },
                      label: const Text(
                        'Healthy',
                      )),
                      const  Chip(
                      
                      label:  Text(
                        'Healthy',
                      )),
                const  Chip(
                    label:  Text('Vegan',
  
        
                  
                  )),
                  const Chip(
                    label: Text('Carrots',
                    )
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