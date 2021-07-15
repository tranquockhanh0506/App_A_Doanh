import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_value/home/button_premium_widget.dart';
import 'package:get_value/widget/screen-detail.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title:  Text('Get anything'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15,),
              Text('Get value Want',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
              SizedBox(height: 15,),
              Row(
                children: [
                  Icon(Icons.image,size: 30,color: Colors.green,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  }, child: Text('Get')),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.pending_actions_outlined,size: 30,color: Colors.greenAccent,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  }, child: Text('Get')),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.pending,size: 30,color: Colors.lightGreenAccent,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  }, child: Text('Get')),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.person_outline,size: 30,color: Colors.grey,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  }, child: Text('Get')),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.fastfood_outlined,size: 30,color: Colors.deepPurple,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  }, child: Text('Get')),
                ],
              ),
              SizedBox(height: 15,),

              ButtonPremiumWidget(),
              SizedBox(height: 15,),

              // Padding(
              //   padding:  EdgeInsets.only(right: 36.0),
              //   child: IconButton(
              //       onPressed: (){

              //       }, icon: Icon(Icons.play_arrow_outlined,color: Colors.lightBlueAccent,size: 100,)),
              // ),

            ],
          ),
        ),
      ),
    );
  }
}
