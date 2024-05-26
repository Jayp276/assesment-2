import 'package:flutter/material.dart';

class more extends StatefulWidget {
  const more({super.key});

  @override
  State<more> createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text("Heart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
        backgroundColor: Colors.white,
        actions: [
            
                SizedBox(width: 105),
                Icon(Icons.undo,color: Colors.black,),
                SizedBox(width: 20),
                Icon(Icons.redo,color: Colors.black,),
                SizedBox(width: 20),
                Icon(Icons.rotate_90_degrees_ccw,color: Colors.black,),
                SizedBox(width: 20,)
        ],
      ),
      backgroundColor: Colors.white, 
      body: Column(
        children: [
          Image.asset("assets/images/heart.jpg", height: 500,width: 500,)
        ],
      ),
    );
  }
}