import 'package:flutter/material.dart';

import 'page2.dart';

class app extends StatefulWidget {

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  List<Map> data=[{
    'title':'Pizza',
    'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjCZ2SNHdWsZVUSigJTsjAchnlWBpnt_KMFA&usqp=CAU',
    'des':'pizza ',
    'info':'• Pizza    \n Onion Pizza 100\n Panner Pizza  165     \n Mashroom Pizza  180    \nPepperoni Pizza 200    '

  },
    {
      'title':'Burger',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzqE1WhGdPm0YU2eL7z65ktGZVKfKBw_6-2w&usqp=CAU',
      'des':'Burger',
      'info':'• Burger \n Veg.Burger 100 \nVeg Chili Cheese 250  \n Panner King 199\n Xtra long Maxican Veg 100'
    },{
      'title':'Cake',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-xbbtOjenth-o4vYlvVB_CUXp40wW3CF2pg&usqp=CAU',
      'des':' cake',
      'info':'• Cake \nChoco Delight 400\n Black Forset 400\n Choco Chip 400 \n Choco Rice 400 \n Choco Walnut 800'

    },
    {
      'title':'Momos',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyn1LJUo7I6TQMEUwM8X_qyuWZlVt8eCn4dQ&usqp=CAU',
      'des':'momos',
      'info':'• Momos\n Veg Momo 90\n Mushroom Momo 90\n Babycorn Momo 90\n Sweet Corn Momo 90,Cheese and Spinach Momo 100\n Panner Momo 100'

    },
    {
      'title':'Sandwich',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMO35KBZy7FkH4IHUoV8KvsbrjKUGSVL5aZQ&usqp=CAU',
      'des':'sandwich',
      'info':'• Sandwich \nVeg Sandwich 90\n New Chilli Cheese Grilled 99\n Potato Cheese Sandwich 100\n Mayo Cheese Sandwich 100'

    },
    {
      'title':'Panipuri',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTupcdVYTqa0CuntmNQEx0J3eIPzotq0zT8Jw&usqp=CAU',
      'des':' panipuri',
      'info':'• Panipuri\n Sev Puri 50\n Dahi Puri 60\n Ragda puri 40\n Masala dahi Puri 35'

    },
    {
      'title':'Manchurian',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAQbGAgEU8w3kPuUL0a6ZxSczP1QtQOdPHHw&usqp=CAU',
      'des':'manchurian',
      'info':'•Manchurian\n Gravy Manchurian 140\n DRY Manchurian 140\n Hakkka Noodles 70'

    },
    {
      'title':'Pasta',
      'images':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-vYNRZ5LeT7ay8y25z1gd_zfw7VWoKjiVuQ&usqp=CAU',
      'des':' pasta'
      ,'info':'• Pasta \n Masala Pasta 70\n Veg.Masala Pasta 80\n Tomato Pasta 80\n Butter masala Pasta 80\n Cheeze masala Pasta 90\n Veg.Cheese Pasta 90'

    },
    {
      'title':'Frankey',
      'images':'https://t3.ftcdn.net/jpg/05/46/85/74/240_F_546857433_qEYx5SJpteaMAgZs89Z3g7hGFktwJEFD.jpg',
      'des':'SUPER tasty',
      'info':'•Frankey \n Veg.Frankey 60\n Schezwan paneer Frankey 80\nChesse frankey 50\nChilli paneer frankey 80'

    },

    {
      'title':'Noodles',
      'images':'https://img.freepik.com/free-photo/schezwan-noodles-szechwan-vegetable-hakka-noodles-chow-mein-is-popular-indo-chinese-recipes-served-bowl-plate-with-wooden-chopsticks_466689-74642.jpg?size=626&ext=jpg&ga=GA1.2.71060362.1673925701&semt=sph',
      'des':'Noodles',
      'info':'•Noodles\n Veggies Noodles 50\n Spicy Noodles 80\nChicken Noodles 90\n cold Noodles 100'

    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.black54,
      appBar: AppBar(title: Text('Menu',style: TextStyle(color: Colors.white,fontSize: 40),),
          backgroundColor: Colors.black,),
      body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: data.length,itemBuilder:(context, index) => Padding(padding: EdgeInsets.all(18.0),
              child: GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => allpro(data[index]),));
              },
                child: Container(
                  decoration:BoxDecoration(border: Border.all(style: BorderStyle.solid,color: Colors.black),borderRadius: BorderRadius.all(Radius.circular(15)),
                      color:Colors.green,image: DecorationImage(fit: BoxFit.fill,image: NetworkImage(data[index]['images']))
                  ) ,
                  alignment: Alignment.bottomCenter,
                  child: Text(data[index]['title'],style: TextStyle(color: Colors.white,fontSize: 20,backgroundColor: Colors.black),),
                ),),), )
       );
  }
