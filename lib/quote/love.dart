// import 'package:flutter/material.dart';
//
// class Love extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text("Love"),
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

class Love extends StatefulWidget {
  @override
  _LoveState createState() => _LoveState();
}

class _LoveState extends State<Love> {
  int _currentIndex = 0;
  List<String> quotes = [
    "Love is not about how many days,\n months, or years you have been together.\n Love is about how much you love each other\n every single day.\n - Alex Wilson",
    "You know you're in love when \nyou can't fall asleep because reality\n is finally better than your dreams. \n - Dr. Seuss",
    "Love is an endless mystery,\n for it has nothing else to\n explain it.\n  - Rabindranath Tagore",
    "To love and be loved is to \nfeel the sun from both sides. \n- David Viscott",
    "In all the world, there is no\n heart for me like yours. In all the world, there is no love for you like mine.\n - Maya Angelou",
    "Love is an energy that exists\n of itself. It is its own value. \n- Thornton Wilder",
    "The best and most beautiful things\n in this world cannot be seen or\n even heard but must be felt with\n the heart. \n- Helen Keller",
    "Love is composed of a single\n soul inhabiting two bodies. \n- Aristotle",
    "Love isn't something you find.\n Love is something that finds you. \n- Loretta Young",
    "Being deeply loved by someone\n gives you strength, while loving \nsomeone deeply gives you courage.\n - Lao Tzu",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Love"),
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
