import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iphone11/Detail/cart_counter.dart';
import 'package:iphone11/widget/global.dart';
import 'color_and_size.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  // height: 500,

                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                        child: Text(product.title+' ' +
                            product.description,
                          style: TextStyle(height: 1.5,color: Colors.lightBlue),
                        ),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               TextButton(onPressed: (){}, child: Text('Next',style: TextStyle(color: Colors.orange),)),
               TextButton(onPressed: (){}, child: Text('Back',style: TextStyle(color: Colors.orange),)),
             ],
           )
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
