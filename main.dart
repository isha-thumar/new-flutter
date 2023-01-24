
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
        primarySwatch: Colors.blue,
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
  String? email;
  String? err;
  String? err2;
  TextEditingController password=TextEditingController();
  bool pass=true;
  TextEditingController emailcrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(decoration: BoxDecoration(image:DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1637775297509-19767f6fc225?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGJsYWNrJTIwYWVzdGhldGljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60') ,fit: BoxFit.cover),),

          child: Center(
              child :Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('login',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w600)),
                  SizedBox(height: 20,),
                  TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                    controller: emailcrl
                    ,onChanged: (val){
                      err=(val.length>=10)?'pleases enter valid chractor':null;
                      setState(() {
                      });
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.white)),
                        prefixIcon: Icon(Icons.email,color: Colors.white,),
                        errorText: err2,labelText: 'email',labelStyle: TextStyle(color: Colors.white),hintText: 'email',
                        hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),),
                  SizedBox(height: 20,),
                  TextField(style: TextStyle(color: Colors.white,fontSize: 20,),
                    controller: password,
                    onChanged: (val){
                      err2=(val.length>=6)?'only 6 charactor':null;
                      setState(() {

                      });
                    }
                    ,
                    decoration: InputDecoration(  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.white)),
                        prefixIcon: Icon(Icons.password,color: Colors.white,),
                        suffixIcon:IconButton(icon: Icon(Icons.visibility),
                          onPressed: (){
                            setState(() {
                              pass=!pass;
                            });
                          },)

                        ,labelText: 'password',hintText: 'password',labelStyle: TextStyle(color: Colors.white),errorText: err,hintStyle: TextStyle(color: Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),)
                  ,SizedBox(height: 20,),
                  ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white),onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context) => reg(),));
                  }, child: Text("registration",style: TextStyle(color:Colors.black54),))
                ],)
          ),
        ));
  }
