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
                Text('List your choice',style: TextStyle(fontSize: 20.0,color: Colors.pink,fontWeight: FontWeight.bold,),),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('1'),
                Text('WIN/LOSE'),
                Text('PRIZEMONEY')
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              child: Text('Kento Momota (桃田 賢斗, Momota Kento, born 1 September 1994) is a Japanese badminton player. He is known to have a skillful and relentless play style on court. He has won several major badminton tournaments including two World Championships titles, two Asian Championships titles, and one All England title. Momota entered into Guinness Book of World Records for "The most badminton men, for his achievements by winning 11 titles in the 2019 season.[1]'),
                padding: EdgeInsets.symmetric(horizontal: 16
            )

            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){}, child: Text('About'))
          ],
        ),
      ),
    );
  }
}
