import 'package:quotes/register/sign_in.dart';
import 'package:quotes/register/sign_up.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 100, 8, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 16,
                color: Colors.black,
                child: Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2.3,
                  child: Image.asset("assets/dailyquotes.png"),
                  
                ),
              ),
              SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  minimumSize: Size(200, 40),
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
