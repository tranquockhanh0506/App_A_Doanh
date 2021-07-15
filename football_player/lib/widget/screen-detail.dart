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
        title: Text('List Player'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
             Text('Acgentinal List palyer',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
        Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(flex: 1,
                          child: Text('1',style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 4,
                          child: Text('Franco Arman',style: TextStyle(fontSize: 16,color: Colors.pink,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 1,
                          child: Text('1986, River Plate',style: TextStyle(fontSize: 16,color: Colors.lime,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(flex: 1,
                          child: Text('2',style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 4,
                          child: Text('Lucas Martínez Quarta',style: TextStyle(fontSize: 16,color: Colors.pink,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 1,
                          child: Text('(1996, Fiorentina',style: TextStyle(fontSize: 16,color: Colors.lime,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(flex: 1,
                          child: Text('3',style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 4,
                          child: Text(' Nicolás Tagliafico',style: TextStyle(fontSize: 16,color: Colors.pink,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 1,
                          child: Text('1992, Ajax',style: TextStyle(fontSize: 16,color: Colors.lime,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(flex: 1,
                          child: Text('4',style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 4,
                          child: Text('Gonzalo Montiel ',style: TextStyle(fontSize: 16,color: Colors.pink,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 1,
                          child: Text('1997, River Plate',style: TextStyle(fontSize: 16,color: Colors.lime,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(flex: 1,
                          child: Text('5',style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 4,
                          child: Text('Leandro Paredes',style: TextStyle(fontSize: 16,color: Colors.pink,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 1,
                          child: Text('1994, PSG',style: TextStyle(fontSize: 16,color: Colors.lime,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(flex: 1,
                          child: Text('6',style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 4,
                          child: Text('Germán Pezzella',style: TextStyle(fontSize: 16,color: Colors.pink,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 1,
                          child: Text('1994, PSG',style: TextStyle(fontSize: 16,color: Colors.lime,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(flex: 1,
                          child: Text('7',style: TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 4,
                          child: Text('Rodrigo De Paul',style: TextStyle(fontSize: 16,color: Colors.pink,fontWeight: FontWeight.bold),)),
                      Expanded(flex: 1,
                          child: Text('1994, PSG',style: TextStyle(fontSize: 16,color: Colors.lime,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
