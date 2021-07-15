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
        title: Text('Result Scorer'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Icon(Icons.sports_handball,color:Colors.deepPurple,size: 30,),
               Icon(Icons.sports_basketball,color:Colors.orangeAccent,size: 30,),
               Icon(Icons.sports_baseball_outlined,color:Colors.pink,size: 30,),
             ],
           ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Infor Palyer',style: TextStyle(fontSize: 30.0,color: Colors.pinkAccent,fontWeight: FontWeight.bold,),),
              ],
            ),
            SizedBox(height: 50,),
             Card(
               child: Container(
                 margin: EdgeInsets.symmetric(horizontal: 6),
                 padding: EdgeInsets.all(16.0),
                 color: Colors.orange,
                 width: MediaQuery.of(context).size.width,
                 child: Column(
                   children: [
                     Text('Ronadol',style: TextStyle(fontSize: 20.0,color: Colors.green,fontWeight: FontWeight.bold,),),
                     SizedBox(height: 20,),
                     Text('join : 20 round',style: TextStyle(fontSize: 20.0,color: Colors.red,fontWeight: FontWeight.bold,),),
                     SizedBox(height: 20,),
                     Text('Year of Birth : 1985',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
                   ],
                 ),
               ),
             ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('prev',style: TextStyle(color: Colors.green,fontSize: 24,fontWeight: FontWeight.bold),),
                Text('Next',style: TextStyle(color: Colors.pink,fontSize: 24,fontWeight: FontWeight.bold),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
