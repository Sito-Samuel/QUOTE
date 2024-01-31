import 'package:flutter/material.dart';

import '../register/sign_in.dart';

class Logout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Are you sure you want to Logout?'),
          SizedBox(height: 20,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> SignInPage())
                  );
                }, child: Text("Logout"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(50, 50),

                  ),),
                SizedBox(width: 50,),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Cancel"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(50, 50),
                      primary: Colors.red,
                      onPrimary: Colors.white
                  ),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
