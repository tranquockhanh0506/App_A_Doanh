import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iphone11/home/button_premium_widget.dart';
import 'package:iphone11/widget/featurred_plants.dart';
import 'package:iphone11/widget/header_with_seachbox.dart';
import 'package:iphone11/widget/Category.dart';
import 'package:iphone11/widget/title_with_more_bbtn.dart';

import 'global.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Iphone Review'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //HeaderWithSearchBox(size: size),
            TitleWithMoreBtn(title: "Phiên bản", press: () {}),
            Category(),
            TitleWithMoreBtn(title: "more", press: () {}),
            FeaturedPlants(),
            Text('Phiên bản iPhone đầu tiên ra mắt ngày 09 tháng 01 năm 2007 và lên kệ bán vào ngày 29 tháng 6 năm 2007 [15]. Bên cạnh tính năng của một máy điện thoại thông thường (hoạt động trên bốn băng tần GSM và EDGE), '),

            ButtonPremiumWidget()
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
