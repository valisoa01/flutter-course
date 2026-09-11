import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.home),
        title: Text('Valisoa'),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.settings),
          IconButton(
            onPressed: () {
              print("Valisoa");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            //width: 140,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(1.5, 2),
                  blurRadius: 10
                )
              ],
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors:[
                Colors.red.shade100,
                Colors.red.shade500,
                Colors.red.shade800,
                Colors.red.shade900,
              ]),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text("Context Center", 
              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            height: 150,
            width: MediaQuery.of(context).size.width, 
            decoration: BoxDecoration(
            color: Colors.grey,
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              topRight: Radius.circular(30),)
          ),
          child: Row(
            children: [
              Container(
              height: 100, 
              width: 150, 
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle
              ),),

              Container(height: 90, width: 100, color: Colors.red),

              Container(height: 100, width: 150,
               decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle
              ),),
            ],
          ),
          ),

          Image.asset("assets/images/1.png"),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.upgrade),),
    );
  }
}
