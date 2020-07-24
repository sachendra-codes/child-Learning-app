import 'package:flutter/material.dart';
import 'datasource.dart';
class Number extends StatefulWidget {
  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){Navigator.pop(context);},),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.4),
          itemCount: number.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                player.play(number[index]['sound']);
              },
              child: Card(
                child: Container(height: 60,child: Image.asset(number[index]['pic']),color: background[index],),
              ),
            );
          }
      ),
    );
  }
}
