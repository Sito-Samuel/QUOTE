// import 'package:flutter/material.dart';
//
// class Success extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text("Success"),
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

class Success extends StatefulWidget {
  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  int _currentIndex = 0;
  List<String> quotes = [
    "Success is not final, \n failure is not fatal \n It is the courage to continue \nthat counts.\n - Winston Churchill",

    "Success usually comes \nto those who are too \nbusy to be looking for it. \n- Henry David Thoreau",

    "The only place where \nsuccess comes before work\n  is in the dictionary. \n- Vidal Sassoon",

    "Success is stumbling from failure \n to failure with no loss of \n enthusiasm. \n- Winston S. Churchill",

    "Success is not the key to happiness.\n Happiness is the key to success. If you love what you are doing, you will be successful. \n- Albert Schweitzer",
    "The road to success and \n the road to failure are  \n almost exactly the same. \n- Colin R. Davis",
    "Success is not in \n what you have, but \n who you are. \n- Bo Bennett",
    "Success seems to be connected with action. \n Successful people keep moving. \n They make mistakes, but they don't quit.\n - Conrad Hilton",
    "Success is to be measured \n not so much by the position that \n one has reached in life as by the \n obstacles which he has overcome.\n - Booker T. Washington",
    "The only limit to our \n realization of tomorrow will \n be our doubts of today. \n - Franklin D. Roosevelt",
    // Add more quotes as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Success"),
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
