import 'package:flutter/material.dart';

import 'page.dart';
class reg extends StatefulWidget {
  const reg({Key? key}) : super(key: key);

  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
appBar: AppBar(backgroundColor: Colors.black),
          body:Container(height: 1000,decoration: BoxDecoration(image:DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1637775297509-19767f6fc225?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGJsYWNrJTIwYWVzdGhldGljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60') ,fit: BoxFit.cover)

          ,),
            child: SingleChildScrollView(
              child: Center(
                  child :Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(' registration',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w600)),
                      SizedBox(height: 20,),
                      TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                        decoration: InputDecoration(   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.white)),prefixIcon: Icon(Icons.email,color: Colors.white,),labelText: 'email',labelStyle: TextStyle(color: Colors.white),hintText: 'email',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),),
                      SizedBox(height: 20,),
                      TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                        decoration: InputDecoration(   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.white)),prefixIcon: Icon(Icons.visibility,color: Colors.white,),labelText: 'password',labelStyle: TextStyle(color: Colors.white),hintText: 'password',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),)
                      ,SizedBox(height: 20,),
                      TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                        decoration: InputDecoration(   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.white)),prefixIcon: Icon(Icons.person,color: Colors.white,),labelText: 'contact',labelStyle: TextStyle(color: Colors.white),hintText: 'contact',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),)),),
                      SizedBox(height: 20,),
                      TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                        decoration: InputDecoration(   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.white)),prefixIcon: Icon(Icons.accessibility_outlined,color: Colors.white,),labelStyle: TextStyle(color: Colors.white),labelText: 'hobby',hintText: 'hobby',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),),
                      SizedBox(height: 20,),
                      TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                        decoration: InputDecoration(   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.white)),prefixIcon: Icon(Icons.date_range,color: Colors.white,),labelText: 'dob',labelStyle: TextStyle(color: Colors.white),hintText: 'dob',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),),
                      SizedBox(height: 20,),
                      TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                        decoration: InputDecoration(   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.white)),prefixIcon: Icon(Icons.person,color: Colors.white,),labelText: 'gender',labelStyle: TextStyle(color: Colors.white),hintText: 'gender',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),),
                      SizedBox(height: 20,),
                      ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white),onPressed:(

                          ) {Navigator.push(context, MaterialPageRoute(builder:(context) => app(),));

                      }, child: Text("go=>",style: TextStyle(color: Colors.black),))
                    ],)
              ),
            ),
          )),
    );
  }
}
