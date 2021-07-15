import 'package:flutter/material.dart';
import 'package:tennis_player/home/button_premium_widget.dart';
import 'package:tennis_player/widget/screen-detail.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _arr =[
    'Roger Federer',
    'Pete Sampras',
    'Ivan Lendl',
    'Jimmy Connors',
    'Novak Djokovic',
    'John McEnroe',
    'Rafael Nadal ',
    'Bjorn Borg',
    'Andre Agassi',
    'Lleyton Hewitt'


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tennis Player'),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text('Tennis Player List '),
            )
          ];
        },
        body:ListView.builder(
          itemCount: _arr.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(name: _arr[index],),
                    ));
              },
              child: Container(
                height: 100,
                color: Colors.primaries[index % Colors.primaries.length],
                alignment: Alignment.center,
                child: Text(
                  'Name : ${_arr[index]}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            );
          },

        ),
      ),
    );
  }
}
