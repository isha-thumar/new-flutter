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
      appBar:AppBar(title: Text(widget.data!['title']),),
      body:Container(height: 1000,decoration: BoxDecoration(gradient: LinearGradient(colors: [

       Colors.deepPurple,
        Colors.white
        ],)),
        child:Column(
        children: [Padding(padding: EdgeInsets.all(20)),
          Center(child: Text(widget.data!['des'],style: TextStyle(fontSize: 40,color: Colors.white,backgroundColor:Colors.black,  ),),
          ),
          SizedBox(height: 20,),
          Container(decoration:BoxDecoration(border: Border.all(color: Colors.black),shape: BoxShape.rectangle),child:Image(image: NetworkImage(widget.data!['images']))),
        SizedBox(height:10),
        Center(child: Container(child: Center(child: Text(widget.data!['info'],style: TextStyle(fontSize: 30),)),))
        ],
      ),
      ),);
  }
}

