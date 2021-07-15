import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String name;

  const DetailScreen({this.name});

  @override
  _DetailScreen createState() => _DetailScreen();
}

class _DetailScreen extends State<DetailScreen> {
  bool _isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Detail',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${widget.name}',
                      style: TextStyle(fontSize: 24, color: Colors.deepPurple),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Andre Agassi is famous for his strong fighting style;'
                        ' 1st serve in history and intelligence. Andre Agassi is '
                        'considered one of the 10 greatest tennis players of all time.'
                            'During his professional tennis career, Andre Agassi won 8 Grand Slam '
                            'titles including 4 Australian Opens, 1 Roland Garros, 1 Wimbledon'
                            ' and 2 US Opens. Andre Agassi is the only male tennis player in the '
                            'Open era to win all the Grand Slam singles titles, the Tennis Masters Cup,'
                            ' the David Cup and the 1996 Atlanta Olympic gold medal.',
                        style: TextStyle(fontSize: 14, color: Colors.pink),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Achievements',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                          SizedBox(width: 30,),
                          Text('5 gold medals')
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
