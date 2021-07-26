import 'package:flutter/material.dart';

// Colors that we use in our app
const kPrimaryColor = Color(0xff314249);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);
 const logo_app = "assets/images/logo_app.PNG";
const app_title = 'Air Blade 2021';
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
     title: "Air Blade 125 - Phiên bản Đặc biệt - Đen",
     price: 42690000,
     size: 12,
     description: dummyText,
     image: "assets/images/item1.png",
     color: Color(0xFF3D82AE)),
 Product(
     id: 2,
     title: "Air Blade 125 - Phiên bản Tiêu chuẩn - Đỏ Đen",
     price: 41490000,
     size: 8,
     description: dummyText,
     image: "assets/images/item2.png",
     color: Color(0xFFD3A984)),
 Product(
     id: 3,
     title: "Air Blade 125 - Phiên bản Tiêu chuẩn - Xanh Đen",
     price: 41490000,
     size: 10,
     description: dummyText,
     image: "assets/images/item3.png",
     color: Color(0xFF989493)),
 Product(
     id: 4,
     title: "Air Blade 125 - Phiên bản Tiêu chuẩn - Xám Đen",
     price: 41490000,
     size: 11,
     description: dummyText,
     image: "assets/images/item4.png",
     color: Color(0xFFE6B398)),
 Product(
     id: 5,
     title: "Air Blade 125 - Phiên bản Tiêu chuẩn - Trắng Đen",
     price: 41490000,
     size: 11,
     description: dummyText,
     image: "assets/images/item5.png",
     color: Color(0xFFE6B398)),
 Product(
     id: 6,
     title: "Air Blade 150 - Phiên bản Đặc biệt",
     price: 56690000,
     size: 11,
     description: dummyText,
     image: "assets/images/item6.png",
     color: Color(0xFF5f838d)),
 Product(
     id: 7,
     title: "Air Blade 150 - Phiên bản Tiêu chuẩn - Đỏ Bạc Đen",
     price: 55490000,
     size: 11,
     description: dummyText,
     image: "assets/images/item7.png",
     color: Color(0xFFad1e23)),
 Product(
     id: 8,
     title: "Air Blade 150 - Phiên bản Tiêu chuẩn - Xanh Bạc Đen",
     price: 55490000,
     size: 11,
     description: dummyText,
     image: "assets/images/item8.png",
     color: Color(0xFF1e2640)),
 Product(
     id: 9,
     title: "Air Blade 150 - Phiên bản Tiêu chuẩn - Xám Đen Bạc",
     price: 55490000,
     size: 11,
     description: dummyText,
     image: "assets/images/item9.png",
     color: Color(0xFF3d3c3f)),
 Product(
     id: 10,
     title: "Air Blade 150 - Phiên bản Tiêu chuẩn - Đen Bạc",
     price: 55490000,
     size: 11,
     description: dummyText,
     image: "assets/images/item10.png",
     color: Color(0xFF474749)),

];

String dummyText =
    "Thiết kế\nXứng danh một mẫu xe tay ga thể thao nổi bật với uy lực bứt phá trau chuốt đến từng chi tiết, tạo ra ấn tượng khác biệt và đáng nhớ \nĐộng cơ - Công nghệ\nNgoài động cơ 125 phân khối , Air Blade được trang bị thêm động cơ 150 phân khối mạnh mẽ với khả năng tăng tốc vượt trội, tăng thêm cảm giác phấn khích để cùng bạn khám phá mọi nẻo đường\nTiện ích & An toàn\nHơn cả một chiếc xe, Air Blade chính là trợ thủ đắc lực và đáng tin cậy của bạn trên mỗi hành trình nhờ trang bị những tiện ích cao cấp và ưu việt.";
