
import 'package:flutter/material.dart';

class Gratitude extends StatefulWidget {
  @override
  _GratitudeState createState() => _GratitudeState();
}

class _GratitudeState extends State<Gratitude> {
  int _currentIndex = 0;
  List<String> quotes = [
    "Gratitude turns what \nwe have into enough.\n- Anonymous",

    "When you are grateful, fear \ndisappears and abundance appears.\n- Tony Robbins",

    "Gratitude is the healthiest \nof all human emotions.\n- Zig Ziglar",

    "Gratitude makes sense of our past,\n brings peace for today, and creates\n a vision for tomorrow.\n- Melody Beattie",

    "Acknowledging the good that you\n already have in your life is the \nfoundation for all abundance.\n- Eckhart Tolle",

    "Gratitude is the fairest blossom\n which springs from the soul.\n- Henry Ward Beecher",

    "Gratitude is not only the greatest \nof virtues but the parent of \nall others.\n- Marcus Tullius Cicero",

    "Enjoy the little things, for one day \nyou may look back and realize they were\n the big things.\n- Robert Brault",

    "Gratitude unlocks the fullness of life.\n It turns what we have into enough, \nand more.\n- Melody Beattie",

    "Gratitude is a powerful catalyst for happiness.\n It’s the spark that lights a fire of joy\n in your soul.\n- Amy Collette",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Gratitude"),
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
