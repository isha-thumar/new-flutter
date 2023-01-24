import 'package:flutter/material.dart';

class allpro extends StatefulWidget {

Map? data;
allpro(this.data);

  @override
  State<allpro> createState() => _allproState();
}

class _allproState extends State<allpro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text(widget.data!['title']),backgroundColor: Colors.black,),
      body:Container(decoration: BoxDecoration(image:DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1637775297509-19767f6fc225?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGJsYWNrJTIwYWVzdGhldGljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60') ,fit: BoxFit.cover),),
        height: 1000,
        child:Column(
        children: [Padding(padding: EdgeInsets.all(20)),
          Center(child: Text(widget.data!['des'],style: TextStyle(fontSize: 40,color: Colors.white,backgroundColor:Colors.black,  ),),
          ),
          SizedBox(height: 20,),
          Container(decoration:BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),),
              child:Image(image: NetworkImage(widget.data!['images']),fit: BoxFit.cover,)),
        SizedBox(height:10),
        Center(child: Container(child: Center(child: Text(widget.data!['info'],style: TextStyle(fontSize: 30,color: Colors.white),)),))
        ],
      ),
      ),);
  }
}



