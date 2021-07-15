import 'package:flutter/material.dart';
class DetailScreen extends StatefulWidget {
  @override
  _DetailScreen createState() => _DetailScreen();
}

class _DetailScreen extends State<DetailScreen> {
  bool _isSelect = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: Text('List your choice'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('List your choice',style: TextStyle(fontSize: 20.0,color: Colors.green,fontWeight: FontWeight.bold,),),
              ],
            ),
            SizedBox(height: 50,),
           Icon(Icons.sports,size: 30,color: Colors.pink,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Name :',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
                Text('Chinsu :',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
                Icon(Icons.food_bank,color: Colors.lime,size: 30,)

              ],
            ),
     SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Name :',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
                Text('Chinsu :',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
                Icon(Icons.food_bank,color: Colors.lime,size: 30,)

              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Name :',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
                Text('Hao Hao :',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
                Icon(Icons.food_bank,color: Colors.lime,size: 30,)

              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Name :',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
                Text('KoKoMi :',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
                Icon(Icons.food_bank,color: Colors.lime,size: 30,)

              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Name :',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
                Text('KCOGI :',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
                Icon(Icons.food_bank,color: Colors.lime,size: 30,)

              ],
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
