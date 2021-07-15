import 'package:flutter/material.dart';
import 'package:goalscorer/home/button_premium_widget.dart';
import 'package:goalscorer/widget/screen-detail.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Goal_Scorer'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(

            children: [
              SizedBox(height: 50,),
              Text('ALL value',style: TextStyle(fontSize: 20.0,color: Colors.green,fontWeight: FontWeight.bold,),),
              SizedBox(height: 50,),
              InkWell(
                onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailScreen()),
                          );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children:[ Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Rolnadol',style: TextStyle(fontSize: 20,color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                        SizedBox(width: 50,),
                        Text('join :',style: TextStyle(fontSize: 20,color: Colors.pink,fontWeight: FontWeight.bold),),

                      ],
                    ),
                      SizedBox(height: 20,),
                    Row(
                      children: [
                        Text('number of desks',style: TextStyle(fontSize: 20,color:Colors.yellow,fontWeight: FontWeight.bold),),
                        SizedBox(width: 20,),
                        Icon(Icons.sports_basketball,size: 24,color: Colors.green,)
                      ],
                    )
                    ]
                  )
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[ Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Messi',style: TextStyle(fontSize: 20,color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                          SizedBox(width: 50,),
                          Text('join :',style: TextStyle(fontSize: 20,color: Colors.pink,fontWeight: FontWeight.bold),),

                        ],
                      ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('number of desks',style: TextStyle(fontSize: 20,color:Colors.yellow,fontWeight: FontWeight.bold),),
                            SizedBox(width: 20,),
                            Icon(Icons.sports_basketball,size: 24,color: Colors.green,)
                          ],
                        )
                      ]
                  )
              ),
              SizedBox(height: 20,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[ Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Laymar',style: TextStyle(fontSize: 20,color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                          SizedBox(width: 50,),
                          Text('join :',style: TextStyle(fontSize: 20,color: Colors.pink,fontWeight: FontWeight.bold),),

                        ],
                      ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('number of desks',style: TextStyle(fontSize: 20,color:Colors.yellow,fontWeight: FontWeight.bold),),
                            SizedBox(width: 20,),
                            Icon(Icons.sports_basketball,size: 24,color: Colors.green,)
                          ],
                        )
                      ]
                  )
              ),
              SizedBox(height: 20,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[ Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Empape',style: TextStyle(fontSize: 20,color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                          SizedBox(width: 50,),
                          Text('join :',style: TextStyle(fontSize: 20,color: Colors.pink,fontWeight: FontWeight.bold),),

                        ],
                      ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('number of desks',style: TextStyle(fontSize: 20,color:Colors.yellow,fontWeight: FontWeight.bold),),
                            SizedBox(width: 20,),
                            Icon(Icons.sports_basketball,size: 24,color: Colors.green,)
                          ],
                        )
                      ]
                  )
              ),
              SizedBox(height: 20,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[ Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Khanhtq',style: TextStyle(fontSize: 20,color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                          SizedBox(width: 50,),
                          Text('join :',style: TextStyle(fontSize: 20,color: Colors.pink,fontWeight: FontWeight.bold),),

                        ],
                      ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('number of desks',style: TextStyle(fontSize: 20,color:Colors.yellow,fontWeight: FontWeight.bold),),
                            SizedBox(width: 20,),
                            Icon(Icons.sports_basketball,size: 24,color: Colors.green,)
                          ],
                        )
                      ]
                  )
              ),

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
              SizedBox(height: 20,),
              ButtonPremiumWidget()
            ],
          ),
        ),
      ),
    );
  }
}
