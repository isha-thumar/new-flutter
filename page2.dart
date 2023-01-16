import 'package:flutter/material.dart';

class allpro extends StatelessWidget {

Map data;
allpro(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text(data['title']),),
      body: Center(child: Text(data['des']),
      ),
    );
  }
}
