import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/number.dart';
import 'package:learn/xylophone.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: Container(
          margin: EdgeInsets.all(3),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('images/sachin.jpg'),
          ),
        ) ,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(3),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('images/bhubhi.png'),
            ),
          ) ,
        ],
        title: Text('Play & Learn',),
      ),
      body: Stack(
        children: <Widget>[
          Container(color: Colors.green[400],),
          Center(child: Image.asset('images/background.jpg')),
          Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Xylophone()));
                  },
                child: Card(color: Colors.red,child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                    child: Text('Xylophone',style: TextStyle(color: Colors.white),)),),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Number()));
                },
                child: Card(color: Colors.deepPurple,child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                    child: Text('Numbers',style: TextStyle(color: Colors.white),)),),
              ),


            ],
          ),),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                      child: Text('@Sachendra Jain',style: TextStyle(color: Colors.white,fontSize: 22),)),
                    color: Colors.deepPurpleAccent,)
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}


