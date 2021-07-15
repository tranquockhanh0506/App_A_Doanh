import 'package:flutter/material.dart';
import 'package:food_picker/home/button_premium_widget.dart';
import 'package:food_picker/widget/screen-detail.dart';
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
        title: Text('Food Picker'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15,),
              Text('Please pick your choice',style: TextStyle(fontSize: 20.0,color: Colors.green,fontWeight: FontWeight.bold,),),
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
                     Expanded(flex:1,child: Icon(Icons.fastfood_outlined,color: Colors.brown,size: 30,)),
                     Expanded(
                       flex: 3,
                         child: Text('Chinsu',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),)),
                     Expanded(
                       flex: 2,
                         child: Container(
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                       color: Colors.green,
                       borderRadius: BorderRadius.circular(10)
                     ),
                       child: Text('Add',style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),
                     ))
                   ],
                 ),
               ),
             ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  children: [
                    Expanded(flex:1,child: Icon(Icons.fastfood_outlined,color: Colors.brown,size: 30,)),
                    Expanded(
                        flex: 3,
                        child: Text('ajinomoto',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),)),
                    Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Add',style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),
                        ))
                  ],
                ),
              ),
              ButtonPremiumWidget(),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  children: [
                    Expanded(flex:1,child: Icon(Icons.fastfood_outlined,color: Colors.brown,size: 30,)),
                    Expanded(
                        flex: 3,
                        child: Text(' mitom hao hao',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),)),
                    Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Add',style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  children: [
                    Expanded(flex:1,child: Icon(Icons.fastfood_outlined,color: Colors.brown,size: 30,)),
                    Expanded(
                        flex: 3,
                        child: Text('mi tom koko mi',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),)),
                    Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Add',style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  children: [
                    Expanded(flex:1,child: Icon(Icons.fastfood_outlined,color: Colors.brown,size: 30,)),
                    Expanded(
                        flex: 3,
                        child: Text('an com voi muoi vung',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),)),
                    Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Add',style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),
                        ))
                  ],
                ),
              ),SizedBox(height: 15,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  children: [
                    Expanded(flex:1,child: Icon(Icons.fastfood_outlined,color: Colors.brown,size: 30,)),
                    Expanded(
                        flex: 3,
                        child: Text('Chinsu',style: TextStyle(fontSize: 20.0,color: Colors.deepPurple,fontWeight: FontWeight.bold,),)),
                    Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Add',style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),
                        ))
                  ],
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
    );
  }
}
