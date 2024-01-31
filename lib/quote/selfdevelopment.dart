
import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class SelfDevelopment extends StatefulWidget {
  @override
  _SelfDevelopmentState createState() => _SelfDevelopmentState();
}

class _SelfDevelopmentState extends State<SelfDevelopment> {
  int _currentIndex = 0;
  List<String> quotes = [
    "The only person you are \ndestined to become is the person \nyou decide to be. - Ralph Waldo Emerson",

        "Invest in yourself. Your career is the engine of your wealth. \n- Paul Clitheroe",

        "You have within you right now, \neverything you need to deal with \nwhatever the world can throw at you.\n - Brian Tracy",

        "The only limit to our \nrealization of tomorrow will be\n our doubts of today.\n - Franklin D. Roosevelt",

        "Don’t watch the clock; \ndo what it does. \nKeep going. \n - Sam Levenson",

        "The best way to predict \nthe future is to create it. \n- Peter Drucker ",

        "Believe in yourself and all\n that you are. Know that there is\n something inside you that is greater \nthan any obstacle. \n- Christian D. Larson",

        "Your life does not get better \nby chance, it gets better \nby change. \n- Jim Rohn",

        "The only way to do great work \nis to love what you do. \n- Steve Jobs",

        "The greatest glory in living\n lies not in never falling, \nbut in rising every time we fall. \n- Nelson Mandela",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Self Development"),
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
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.favorite),
            //   color: Colors.white,
            // ),
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
