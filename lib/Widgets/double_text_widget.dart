import 'package:bookmyshow1/utils/app_layout.dart';
import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smalltext;
  const AppDoubleText(
      {Key? key, required this.bigText, required this.smalltext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLineStyle2),
        InkWell(
          onTap: () {
            print("You are Tapped");
          },
          child: Text(
            smalltext,
            style: Styles.textStyle.copyWith(color: Styles.primaeryColor),
          ),
        )
      ],
    );
  }
}

class ColumnWidget extends StatelessWidget {
  final String Str;
  final String date;

  const ColumnWidget({Key? key, required this.Str, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Applayout.getHeight(40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Applayout.getHeight(20)),
        color: Color(0x0f806c6c),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "  $Str",
            style: Styles.headLineStyle2.copyWith(
              color: Styles.primaeryColor,
            ),
          ),
          Text(
            "Rs.$date        ",
            style: Styles.headLineStyle2.copyWith(color: Styles.primaeryColor),
          ),
        ],
      ),
    );
  }
}
