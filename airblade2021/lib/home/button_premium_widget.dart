
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airblade2021/premium/premium_screens.dart';
import 'package:airblade2021/utils/context_extensions.dart';


class ButtonPremiumWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        context.push((context) => PremiumScreens());
      },
      textColor:  Colors.redAccent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.checkmark_seal_fill,
            ),
            Text(" Buy Premium", style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0)),
          ],
        ),
      ),
    );
  }
}
