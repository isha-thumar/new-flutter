
import 'package:flutter/material.dart';

import 'REG.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.blueGrey,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightBlue,
      ),
      home: myapp(),
    );
  }
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(decoration: BoxDecoration(gradient: LinearGradient(
          colors: [
            Colors.cyan,
            Colors.indigo,
            Colors.black38,
          ],
        ),),

          child: Center(
              child :Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('login',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w600)),
                  SizedBox(height: 20,),
                  TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                    decoration: InputDecoration(prefixIcon: Icon(Icons.email,color: Colors.white,),labelText: 'email',hintText: 'email',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),),
                  SizedBox(height: 20,),
                  TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                    decoration: InputDecoration(prefixIcon: Icon(Icons.visibility,color: Colors.white,),labelText: 'password',hintText: 'password',hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),)
                  ,SizedBox(height: 20,),ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white),onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context) => reg(),));
                  }, child: Text("registration"))
                ],)
          ),
        ));
  }
}
