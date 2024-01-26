import 'package:flutter/material.dart';

class Educational extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Educational"),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
          Row(
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Previous")),
              SizedBox(width: 80,),
              ElevatedButton(onPressed: (){}, child: Text("Next")),


            ],
          )
        ],
      ),
    );
  }
}
