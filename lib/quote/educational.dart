

import 'package:flutter/material.dart';

class Educational extends StatefulWidget {
  @override
  _EducationalState createState() => _EducationalState();
}

class _EducationalState extends State<Educational> {
  int _currentIndex = 0;
  List<String> quotes = [
    "Education is the most powerful weapon \n which you can use to change the world. \n- Nelson Mandela",
    "The beautiful thing about learning \n is that no one can take it away from you. \n- B.B. King",
    "The function of education is to teach \n one to think intensively and to think critically. \n- Martin Luther King Jr.",
    "Education is not the filling of a pail, \n but the lighting of a fire. \n- W.B. Yeats",
    "An investment in knowledge pays the best interest. \n- Benjamin Franklin",
    "The more that you read, \n the more things you will know. \n The more that you learn, \n the more places you'll go. \n- Dr. Seuss",
    "Education is the passport to the future, \n for tomorrow belongs to those who prepare for it today. \n- Malcolm X",
    "The only person who is educated is the one \n who has learned how to learn and change. \n- Carl Rogers",
    "Learning is a treasure that will follow its owner everywhere. \n- Chinese Proverb",
    "The expert in anything was once a beginner. \n- Helen Hayes",
    // Add more quotes as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Educational"),
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



