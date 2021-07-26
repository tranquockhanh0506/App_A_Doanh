import 'package:flutter/material.dart';
import 'package:iphone11/widget/details_screen.dart';
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
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
        return  CategoryCard(
          image: products[index].image.toString(),
          title: products[index].title.toString(),
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CategoryCard(
            image: "assets/images/item1.jpg",
            title: "IELGY Xu Hướng Túi Messenger Túi, Túi Vuông Nhỏ Có Khóa Kéo Thời Trang Hàn Quốc Cho Nữ Vai Túi, Túi Xách Màu Trơn PU",
            country: "Russia",
            // price: 274386,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[0],
                    ),
                  ));
            },
          ),
          CategoryCard(
            image: "assets/images/item2.jpg",
            title: "TÚI TOTE ĐEO CHÉO UNISEX NAM NỮ - VẢI DỆT CANVAS",
            country: "Russia",
            // price: 28790,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[1],
                    ),
                  ));
            },
          ),
          CategoryCard(
            image: "assets/images/item3.jpg",
            title: "Túi Đeo Chéo Nữ Mini Hàn Quốc 2021",
            country: "Russia",
            // price: 28000,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[2],
                    ),
                  ));
            },
          ),
          CategoryCard(
            image: "assets/images/item4.jpg",
            title: "Túi Đeo Vai Nữ IELGY Al-Match Màu Đen, Quai Đeo Chéo Một Bên Vai, Chất Liệu PU",
            country: "Russia",
            // price: 151469,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[3],
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.all(16.0),
        child: Container(
          height: 150,
            child: Image.asset(image)),
      ),  // child: Column(

    );
  }
}
