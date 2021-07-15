import 'package:flutter/material.dart';
import 'package:badminton_players/home/button_premium_widget.dart';
import 'package:badminton_players/widget/screen-detail.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,

      child: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title:  Text('badminton players'),
          bottom:  TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.person_outline),
              ),
              Tab(
                icon: Icon(Icons.pending_actions_outlined),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 15,),
                Text('List badminton players',style: TextStyle(fontSize: 20.0,color: Colors.green,fontWeight: FontWeight.bold,),),
                SizedBox(height: 15,),
                ButtonPremiumWidget(),
                SizedBox(height: 15,),
               InkWell(
                 onTap: (){
                   Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => DetailScreen()),
                               );
                 },
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal: 16),
                   width: MediaQuery.of(context).size.width,
                   height: 100,
                   child: Row(
                     children: [
                       Expanded(flex:1,
                           child: Text('Japan : ',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),)
                       ),
                       Expanded(
                         flex: 3,
                           child: Text('Kento MoMota',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold,),)
                       ),
                       Expanded(
                         flex: 2,
                           child: Container(
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                         color: Colors.green,
                         borderRadius: BorderRadius.circular(10)
                       ),
                         child: Icon(Icons.remove_red_eye,size: 30,color: Colors.brown,),
                       ))
                     ],
                   ),
                 ),
               ),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(flex:1,
                            child: Text('MAS : ',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),)
                        ),
                        Expanded(
                            flex: 3,
                            child: Text('LEE ZII JIA',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold,),)
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.remove_red_eye,size: 30,color: Colors.brown,),
                            ))
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(flex:1,
                            child: Text('CHIN : ',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),)
                        ),
                        Expanded(
                            flex: 3,
                            child: Text('CHIEN LONG',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold,),)
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.remove_red_eye,size: 30,color: Colors.brown,),
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(flex:1,
                            child: Text('INA : ',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),)
                        ),
                        Expanded(
                            flex: 3,
                            child: Text('ANTHONY SINISUKA GINTING',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold,),)
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.remove_red_eye,size: 30,color: Colors.brown,),
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(flex:1,
                            child: Text('dEN : ',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),)
                        ),
                        Expanded(
                            flex: 3,
                            child: Text('chou tienchen',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold,),)
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.remove_red_eye,size: 30,color: Colors.brown,),
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),

                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailScreen()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(flex:1,
                            child: Text('Den : ',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),)
                        ),
                        Expanded(
                            flex: 3,
                            child: Text('Viktor AxeLSEN',style: TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold,),)
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.remove_red_eye,size: 30,color: Colors.brown,),
                            ))
                      ],
                    ),
                  ),
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
