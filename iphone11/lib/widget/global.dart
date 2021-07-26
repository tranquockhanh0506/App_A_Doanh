import 'package:flutter/material.dart';

// Colors that we use in our app
const kPrimaryColor = Colors.green;
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);
 const logo_app = "assets/images/logo_app.jpg";
const app_title = 'iPhone X';
const double kDefaultPadding = 20.0;

class Product {
 final String image, title, description;
 final int price, size, id;
 final Color color;
 Product({
  this.id,
  this.image,
  this.title,
  this.price,
  this.description,
  this.size,
  this.color,
 });
}

List<Product> products = [
 Product(
     id: 1,
     title: "iPhone X 256GB",
     // price: 274386,
     size: 12,
     description: dummyText,
     image: "assets/images/item1.jpg",
     color: Color(0xFF3D82AE)),
 Product(
     id: 2,
     title: "iPhone X 64GB",
     // price: 28790,
     size: 8,
     description: dummyText,
     image: "assets/images/item2.jpg",
     color: Color(0xFFD3A984)),
 Product(
     id: 3,
     title: "iPhone X 256GB (Bạc)",
     // price: 28000,
     size: 10,
     description: dummyText,
     image: "assets/images/item3.jpg",
     color: Color(0xFF989493)),
 Product(
     id: 4,
     title: "iPhone X Plus",
     // price: 151469,
     size: 11,
     description: dummyText,
     image: "assets/images/item4.jpg",
     color: Color(0xFFE6B398)),
];

String dummyText =
    "được đã được Apple cho ra mắt ngày 12/9 vừa rồi đánh dấu chặng đường 10 năm lần đầu tiên iPhone ra đời. iPhone X mang trên mình thiết kế hoàn toàn mới với màn hình Super Retina viền cực mỏng và trang bị nhiều công nghệ hiện đại như nhận diện khuôn mặt Face ID, sạc pin nhanh và sạc không dây cùng khả năng chống nước bụi cao cấp";
