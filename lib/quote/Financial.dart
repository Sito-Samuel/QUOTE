

import 'package:flutter/material.dart';

class Financial extends StatefulWidget {
  @override
  _FinancialState createState() => _FinancialState();
}

class _FinancialState extends State<Financial> {
  int _currentIndex = 0;
  List<String> quotes = [
    "The stock market is filled with \nindividuals who know the price of everything, \nbut the value of nothing. \n - Philip Fisher",
    "The goal of a successful trader\n is to make the best trades.\n Money is secondary. \n - Alexander Elder",
    "Do not save what is left after spending,\n but spend what is left after saving. \n - Warren Buffett",
    "It's not how much money you make, but how much money \nyou keep, how hard it works for you, and how many \ngenerations you keep it for. \n - Robert Kiyosaki",
    "The stock market is a device for transferring\n money from the impatient to the patient. \n - Warren Buffett",
    "The more you learn, the more you earn.\n - Warren Buffett",
    "The stock market is a no-called-strike game.\n You don't have to swing at everything \n you can wait for your pitch. \n - Warren Buffett",
    "The individual investor should act \nconsistently as an investor and not as \na speculator. \n - Benjamin Graham",
    "The first rule of investment is don't lose money;\n the second rule is don't forget the first rule. \n - Warren Buffett",
    "The four most dangerous words in \ninvesting are: 'This time it's different.' \n - Sir John Templeton",
    // Add more quotes as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Financial"),
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
