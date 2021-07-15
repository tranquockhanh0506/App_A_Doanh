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
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('vALUE GETED'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Value geted',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
            SizedBox(height: 40,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Icon(Icons.image,color: Colors.grey,size: 30,),
               Icon(Icons.image,color: Colors.deepPurple,size: 30,),
               Icon(Icons.image,color: Colors.lightGreen,size: 30,),

             ],
           ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.fastfood,color: Colors.grey,size: 30,),
                Icon(Icons.fastfood,color: Colors.deepPurple,size: 30,),
                Icon(Icons.fastfood,color: Colors.lightGreen,size: 30,),

              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.pending_actions_outlined,color: Colors.grey,size: 30,),
                Icon(Icons.pending_actions_outlined,color: Colors.deepPurple,size: 30,),
                Icon(Icons.pending_actions_outlined,color: Colors.lightGreen,size: 30,),

              ],
            ),
            SizedBox(height: 20,),
          ],
        ),
      )
    );
  }
}
