import 'package:flutter/material.dart';
import 'package:quotes/home/homepage.dart';
import 'package:quotes/home/logout.dart';

import 'aboutus.dart';

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Home())
              );
            }, child: Text("Quotes"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(50, 50),
              ),),
            // ElevatedButton(onPressed: (){}, child: Text("Favourite"),
            //   style: ElevatedButton.styleFrom(
            //     minimumSize: Size(50, 50),
            //   ),),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AboutUs())
              );
            }, child: Text("About us"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(50, 50),
              ),),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> Logout())
              );
            }, child: Text("Logout"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(50, 50),
                primary: Colors.red,
                onPrimary: Colors.white
              ),),

          ],
        ),
      ),
    );
  }
}
