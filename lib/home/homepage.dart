import 'package:flutter/material.dart';
import 'package:quotes/quote/Financial.dart';
import 'package:quotes/quote/gratitude.dart';
import 'package:quotes/quote/leadership.dart';
import 'package:quotes/quote/motivational.dart';
import 'package:quotes/quote/success.dart';

import '../quote/educational.dart';
import '../quote/love.dart';
import '../quote/selfdevelopment.dart';
import 'menu.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4, 15, 4, 0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text('Quotes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          )),
                      SizedBox(width: 200),
                      // IconButton(
                      //   onPressed: (){},
                      //   icon: Icon(Icons.favorite,
                      //       color: Colors.red),
                      // ),
                      IconButton(
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Menu())
                          );
                        },
                        icon: Icon(Icons.menu),
                      ),
                    ],
                  ),
                  Container(
                    height: 710,
                    width: 900,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => Educational())
                                  );
                                },
                                child: Container(
                                  height: 150,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(child: Text("Educational",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => Motivational())
                                  );
                                },
                                child: Container(
                                  height: 150,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(child: Text("Motivational")),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => Leadership())
                                  );
                                },
                                child: Container(
                                  height: 150,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(child: Text("Leadership")),
                                ),
                              ),
                              SizedBox(width: 15,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => Success())
                                  );
                                },
                                child: Container(
                                  height: 150,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(child: Text("Success",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),),),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => Financial())
                                  );
                                },
                                child: Container(
                                  height: 150,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(child: Text("Financial")),
                                ),
                              ),
                              SizedBox(width: 15,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => SelfDevelopment())
                                  );
                                },
                                child: Container(
                                  height: 150,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    color:Colors.blue,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(child: Text("Self Development",
                                      style: TextStyle(
                                        color: Colors.white,

                                      ),),),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => Gratitude())
                                  );
                                },
                                child: Container(
                                  height: 150,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(child: Text("Gratitude")),
                                ),
                              ),
                              SizedBox(width: 15,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) =>Love())
                                  );
                                },
                                child: Container(
                                  height: 150,
                                  width: 155,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Center(child: Text("Love",
                                      style: TextStyle(
                                        color: Colors.white,

                                      ),),),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
