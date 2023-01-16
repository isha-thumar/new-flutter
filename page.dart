import 'package:flutter/material.dart';

import 'page2.dart';

class app extends StatefulWidget {

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  List<Map> data=[{
    'title':'pizza',
    'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjCZ2SNHdWsZVUSigJTsjAchnlWBpnt_KMFA&usqp=CAU',
    'des':'its pizza'

  },
    {
      'title':'burger',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzqE1WhGdPm0YU2eL7z65ktGZVKfKBw_6-2w&usqp=CAU',
      'des':'its burger'

    },{
      'title':'cake',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-xbbtOjenth-o4vYlvVB_CUXp40wW3CF2pg&usqp=CAU',
      'des':'its cake'

    },
    {
      'title':'momos',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyn1LJUo7I6TQMEUwM8X_qyuWZlVt8eCn4dQ&usqp=CAU',
      'des':'momos'

    },
    {
      'title':'sandwich',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMO35KBZy7FkH4IHUoV8KvsbrjKUGSVL5aZQ&usqp=CAU',
      'des':'its sandwich'

    },
    {
      'title':'panipuri',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTupcdVYTqa0CuntmNQEx0J3eIPzotq0zT8Jw&usqp=CAU',
      'des':'its panipuri'

    },
    {
      'title':'manchuriyan',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAQbGAgEU8w3kPuUL0a6ZxSczP1QtQOdPHHw&usqp=CAU',
      'des':'its manchuriyan with greay'

    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Menu',style: TextStyle(color: Colors.black,fontSize: 40),),),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: data.length,itemBuilder:(context, index) => Padding(padding: EdgeInsets.all(18.0),
        child: GestureDetector(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => allpro(data[index]),));
        },
        child: Container(
        decoration:BoxDecoration(border: Border.all(style: BorderStyle.solid,color: Colors.black),
          color:Colors.green,image: DecorationImage(fit: BoxFit.fill,image: NetworkImage(data[index]['images']))
        ) ,
          alignment: Alignment.bottomCenter,
          child: Text(data[index]['title'],style: TextStyle(color: Colors.white,fontSize: 20,backgroundColor: Colors.black),),
        ),),), )
    );
  }
}
