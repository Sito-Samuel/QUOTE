import 'package:flutter/material.dart';

class SigningIn extends StatelessWidget {
  const SigningIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 100, 8, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 16,
                color: Colors.black,
                child: Container(
                  color: Colors.transparent,
                  height:MediaQuery.of(context).size.height/5 ,
                  width: MediaQuery.of(context).size.width/2.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/sign_inbackground.jpg')),
                  ),


              ),
              ),
              SizedBox(height: 200),


            ],
          ),

        ),
      ),

    );
  }
}
