import 'package:flutter/material.dart';
import 'package:football_player/home/button_premium_widget.dart';
import 'package:football_player/widget/screen-detail.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('List of Football Players'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 30,),
               InkWell(
                 onTap: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => DetailScreen()),
                   );
                 },
                 child: Card(
                   color: Colors.pinkAccent,
                   child: Container(
                     padding: EdgeInsets.symmetric(vertical:16),
                     alignment: Alignment.center,
                     height: 90,
                     width: MediaQuery.of(context).size.width,
                     child: Column(
                       children: [
                         Text('Bo Dao Nha',style: TextStyle(fontSize: 16,color: Colors.orange,fontWeight: FontWeight.bold),),
                         SizedBox(height: 10,),
                         Icon(Icons.sports_baseball,color: Colors.brown,size: 20,)
                       ],
                     ),
                   ),
                 ),
               ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailScreen()),
                  );
                },
                child: Card(
                  child: Container(
                    color: Colors.black26,
                    padding: EdgeInsets.symmetric(vertical:10),
                    alignment: Alignment.center,
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Text('Acgentina',style: TextStyle(fontSize: 16,color: Colors.orange,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Icon(Icons.sports_baseball,color: Colors.brown,size: 20,)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailScreen()),
                  );
                },
                child: Card(
                  color: Colors.limeAccent,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical:10),
                    alignment: Alignment.center,
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Text('Tay Ban Nha',style: TextStyle(fontSize: 16,color: Colors.orange,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Icon(Icons.sports_baseball,color: Colors.brown,size: 20,)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailScreen()),
                          );
                },
                child: Card(
                  child: Container(
                    color: Colors.deepPurple,
                    padding: EdgeInsets.symmetric(vertical:10),
                    alignment: Alignment.center,
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Text('Viet Nam',style: TextStyle(fontSize: 16,color: Colors.orange,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Icon(Icons.sports_baseball,color: Colors.brown,size: 20,)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text('List football',style: TextStyle(fontSize: 20.0,color: Colors.green,fontWeight: FontWeight.bold,),),
              SizedBox(height: 30,),
              // Padding(
              //   padding:  EdgeInsets.only(right: 36.0),
              //   child: IconButton(
              //       onPressed: (){
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(builder: (context) => DetailScreen()),
              //         );
              //       }, icon: Icon(Icons.play_arrow_outlined,color: Colors.lightBlueAccent,size: 100,)),
              // ),
             // SizedBox(height: 150,),
              ButtonPremiumWidget()
            ],
          ),
        ),
      ),
    );
  }
}
