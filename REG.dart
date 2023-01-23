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
    return Scaffold(
        appBar: AppBar(),
        body:Container(height: 1000,decoration: BoxDecoration(gradient: LinearGradient(colors: [
          Colors.purpleAccent,
          Colors.blue,
          Colors.white

        ],)),
          child: SingleChildScrollView(
            child: Center(
                child :Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' registration',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w600)),
                    SizedBox(height: 20,),
                    TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                      decoration: InputDecoration(prefixIcon: Icon(Icons.email,color: Colors.white,),labelText: 'email',hintText: 'email',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),),
                    SizedBox(height: 20,),
                    TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                      decoration: InputDecoration(prefixIcon: Icon(Icons.visibility,color: Colors.white,),labelText: 'password',hintText: 'password',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),)
                    ,SizedBox(height: 20,),
                    TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                      decoration: InputDecoration(prefixIcon: Icon(Icons.person,color: Colors.white,),labelText: 'contact',hintText: 'contact',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),)),),
                    SizedBox(height: 20,),
                    TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                      decoration: InputDecoration(prefixIcon: Icon(Icons.accessibility_outlined,color: Colors.white,),labelText: 'hobby',hintText: 'hobby',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),),
                    SizedBox(height: 20,),
                    TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                      decoration: InputDecoration(prefixIcon: Icon(Icons.date_range,color: Colors.white,),labelText: 'dob',hintText: 'dob',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),),
                    SizedBox(height: 20,),
                    TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                      decoration: InputDecoration(prefixIcon: Icon(Icons.person,color: Colors.white,),labelText: 'gender',hintText: 'gender',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),),
                    SizedBox(height: 20,),
                    ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white),onPressed:(

                        ) {Navigator.push(context, MaterialPageRoute(builder:(context) => app(),));

                    }, child: Text("go=>",style: TextStyle(color: Colors.black),))
                  ],)
            ),
          ),
        ));
  }
}
