// import 'package:flutter/material.dart';
//
// class Motivational extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text("Motivational"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(8.0, 20, 8, 0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Container(
//                 height: MediaQuery.of(context).size.height/3,
//                 child: Image.asset("assets/dailyquotes.png"),
//               ),
//             ),
//             SizedBox(height: 60),
//             IconButton(onPressed: (){}, icon: Icon(Icons.favorite), color: Colors.white,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(onPressed: (){}, child: Text("Previous"),
//                   style: ElevatedButton.styleFrom(
//                     minimumSize: Size(50, 50),
//                   ),),
//                 SizedBox(width: 50,),
//                 ElevatedButton(onPressed: (){}, child: Text("Next"),
//                   style: ElevatedButton.styleFrom(
//                     minimumSize: Size(100, 50),
//                   ),),
//
//
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Motivational extends StatefulWidget {
  @override
  _MotivationalState createState() => _MotivationalState();
}

class _MotivationalState extends State<Motivational> {
  int _currentIndex = 0;
  List<String> quotes = [
    "Believe you can and\n you're halfway there. \n- Theodore Roosevelt",
    "The only way to do \n great work is to love \n what you do. \n- Steve Jobs",
    "Don't watch the clock; \n do what it does. \n Keep going. \n- Sam Levenson",
    "Success is not final, \n failure is not fatal: \n It is the courage to continue \n that counts.\n - Winston Churchill",
    "The future belongs to \nthose who believe in the \n beauty of their dreams. \n- Eleanor Roosevelt",
    "Your time is limited, \n don't waste it living \n someone else's life. - Steve Jobs\n",
    "The only limit to our \nrealization of tomorrow will be \n our doubts of today. \n - Franklin D. Roosevelt",
    "It always seems impossible \n until it's done. \n- Nelson Mandela",
    "The only way to achieve\n the impossible is to \n believe it is possible.\n - Charles Kingsleigh",
    "The only person you are \ndestined to become is the \nperson you decide to be. \n- Ralph Waldo Emerson",
    // Add more quotes as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Motivational"),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(8.0, 20, 8, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Card(
                  elevation: 5.0,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        quotes[_currentIndex],
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _currentIndex > 0
                      ? () {
                    setState(() {
                      _currentIndex--;
                    });
                  }
                      : null,
                  child: Text("Previous"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(50, 50),
                  ),
                ),
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: _currentIndex < quotes.length - 1
                      ? () {
                    setState(() {
                      _currentIndex++;
                    });
                  }
                      : null,
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 50),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
