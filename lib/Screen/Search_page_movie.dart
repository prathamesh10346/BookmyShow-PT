import 'package:bookmyshow1/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class UpdatedMovies extends StatelessWidget {
  final Map<String, dynamic> Movie;

  const UpdatedMovies({Key? key, required this.Movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: Applayout.getHeight(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: Applayout.getHeight(300),
            width: size.width * 0.42,
            padding: EdgeInsets.symmetric(
                horizontal: Applayout.getHeight(15),
                vertical: Applayout.getWidth(15)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Applayout.getHeight(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ]),
            child: Column(
              children: [
                Container(
                  height: Applayout.getHeight(190),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Applayout.getHeight(12)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/${Movie['one']['image']}"))),
                ),
                Gap(Applayout.getHeight(10)),
                Text(
                  Movie['one']['place'],
                  style:
                      Styles.headLineStyle2.copyWith(color: Color(0xE0BC9B76)),
                ),
                Gap(Applayout.getHeight(10)),
                Text(
                  Movie['one']['realize'],
                  style: Styles.headLineStyle4.copyWith(
                      fontSize: 12,
                      color: Color(
                        0xE08D7459,
                      )),
                )
              ],
            ),
          ),
          // Gap(Applayout.getHeight(25)),
          Container(
            height: Applayout.getHeight(300),
            width: size.width * 0.42,
            padding: EdgeInsets.symmetric(
                horizontal: Applayout.getHeight(15),
                vertical: Applayout.getWidth(15)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Applayout.getHeight(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ]),
            child: Column(
              children: [
                Container(
                  height: Applayout.getHeight(190),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Applayout.getHeight(12)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/${Movie['two']['image']}"))),
                ),
                Gap(Applayout.getHeight(10)),
                Text(
                  Movie['two']['place'],
                  style:
                      Styles.headLineStyle2.copyWith(color: Color(0xE0BC9B76)),
                ),
                Gap(Applayout.getHeight(10)),
                Text(
                  Movie['two']['realize'],
                  style: Styles.headLineStyle4.copyWith(
                      fontSize: 12,
                      color: Color(
                        0xE08D7459,
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
