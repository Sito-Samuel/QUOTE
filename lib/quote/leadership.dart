

import 'package:flutter/material.dart';

class Leadership extends StatefulWidget {
  @override
  _LeadershipState createState() => _LeadershipState();
}

class _LeadershipState extends State<Leadership> {
  int _currentIndex = 0;
  List<String> quotes = [
    "A good leader takes a little\n more than his share of the blame,\n a little less than his share \nof the credit. \n- Arnold H. Glasow",
    "The greatest leader is not necessarily\n the one who does the greatest things. \nHe is the one that gets the people to do \nthe greatest things. \n- Ronald Reagan",
    "The function of leadership is \nto produce more leaders, not more \nfollowers. \n- Ralph Nader",
    "A leader is one who knows the way,\n goes the way, and shows \nthe way. \n- John C. Maxwell",
    "Leadership is not about being in charge.\n It's about taking care of those in \nyour charge. \n- Simon Sinek",
    "A true leader has the confidence \nto stand alone, the courage to make \ntough decisions, and the compassion to listen\n to the needs of others.\n - Douglas MacArthur",
    "The best leaders are those most \ninterested in surrounding themselves with \nassistants and associates smarter than\n they are.\n - John C. Maxwell",
    "Leadership is not about being in control.\n It's about making others feel they're \nin control.\n - Warren Bennis",
    "Leadership is the capacity to\n translate vision into reality.\n - Warren Bennis",
    "To handle yourself, use your head;\n to handle others, use your heart. \n- Eleanor Roosevelt",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Leadership"),
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
