import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iphone11/Detail/body.dart';
import 'package:iphone11/widget/global.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: Colors.lime.shade100,
      appBar: AppBar(
        backgroundColor: Colors.lime.shade100,
        title: Text('Iphone Review',style: TextStyle(color: Colors.deepPurple),),
      ),
      body: Body(product: product),
    );
  }

}
