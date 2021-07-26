import 'package:airblade2021/widget/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:airblade2021/home/button_premium_widget.dart';
import 'package:airblade2021/widget/featurred_plants.dart';
import 'package:airblade2021/widget/header_with_seachbox.dart';
import 'package:airblade2021/widget/Category.dart';
import 'package:airblade2021/widget/title_with_more_bbtn.dart';

import 'global.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            TitleWithMoreBtn(title: "Air Blade 125 - Phiên bản Đặc biệt", press: () {},hideMore: true,),
            // FeaturedPlants(),
            // TitleWithMoreBtn(title: "Phiên bản", press: () {}),
            category(context,0),
            TitleWithMoreBtn(title: "Air Blade 125 - Phiên bản Tiêu chuẩn", press: () {},hideMore: true,),
            category(context,1),
            category(context,2),
            category(context,3),
            category(context,4),
            TitleWithMoreBtn(title: "Air Blade 150 - Phiên bản Đặc biệt", press: () {},hideMore: true,),
            category(context,5),
            TitleWithMoreBtn(title: "Air Blade 150 - Phiên bản Tiêu chuẩn", press: () {},hideMore: true,),
            category(context,6),
            category(context,7),
            category(context,8),
            category(context,9),
            SizedBox(height: kDefaultPadding),
            ButtonPremiumWidget()
          ],
        ),
      ),
    );
  }
  category(context,int index){
    return Container(
      width: MediaQuery.of(context).size.width,
      child: CategoryCard(
        image: products[index].image.toString(),
        title: products[index].title.toString(),
        price: products[index].price??0,
        press: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  product: products[index],
                ),
              ));
        },
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
