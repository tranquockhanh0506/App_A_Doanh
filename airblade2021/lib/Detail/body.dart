import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:airblade2021/Detail/cart_counter.dart';
import 'package:airblade2021/widget/global.dart';
import 'color_and_size.dart';
import 'product_title_with_image.dart';
import 'package:intl/intl.dart';
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
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                ),
                // height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ColorAndSize(product: product),
                    SizedBox(height: kDefaultPadding / 2),

                    if(product.price != null)
                      RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "Price\n",style: Theme.of(context).textTheme.headline6.copyWith(
                          color: kTextColor??Colors.white, fontWeight: FontWeight.bold),),
                          TextSpan(
                            text: '\$${NumberFormat("#,###").format(product.price)}',
                            style: Theme.of(context).textTheme.headline4.copyWith(
                                color: kTextColor??Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                      child: Text(product.title+' ' +
                          product.description,
                        style: TextStyle(height: 1.5),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CartCounter(),
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF6464),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset("assets/icons/heart.svg"),
                        )
                      ],
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: kDefaultPadding),
                            height: 50,
                            width: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: product.color,
                              ),
                            ),
                            child: IconButton(
                              icon: SvgPicture.asset(
                                "assets/icons/add_to_cart.svg",
                                color: product.color,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18)),
                                color: product.color,
                                onPressed: () {},
                                child: Text(
                                  "Mua ngay".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ProductTitleWithImage(product: product)
            ],
          )
        ],
      ),
    );
  }
}
