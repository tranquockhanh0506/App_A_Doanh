import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airblade2021/widget/details_screen.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';
import 'global.dart';

class Category extends StatelessWidget {
  const Category({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
        return  CategoryCard(
          image: products[index].image.toString(),
          title: products[index].title.toString(),
          price: products[index].price??0,
          // country: "Russia",
          // price: 274386,
          press: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    product: products[index],
                  ),
                ));
          },
        );
      },),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    this.image,
    this.title,
    this.price,
    this.country,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(12),
        // margin: EdgeInsets.only(
        //   left: kDefaultPadding,
        //   top: kDefaultPadding / 2,
        //   bottom: kDefaultPadding * 2.5,
        // ),
        width: size.width * 0.5,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text("$title\n".toUpperCase(),
                    style: Theme.of(context).textTheme.subtitle1,
                    maxLines: 2,
                  ),
                  Text('\$${NumberFormat("#,###",'vi').format(price)} VNĐ'.toUpperCase(),
                    style: Theme.of(context).textTheme.subtitle1,
                    maxLines: 2,
                  ),
                  // Text(
                  //   '\$${NumberFormat("#,###").format(price)}',
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .button
                  //       .copyWith(color: kPrimaryColor),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
