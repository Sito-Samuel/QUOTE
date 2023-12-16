import 'package:quotes/register/sign_in.dart';
import 'package:quotes/register/sign_up.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 100, 8, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/dailyquotes.png'),
              SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                style: ElevatedButton.styleFrom(minimumSize: Size(200, 40)),
                child: Text('Sign Up'),
              ),
              SizedBox(
                height: 6,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                style: ElevatedButton.styleFrom(minimumSize: Size(200, 40)),
                child: Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
