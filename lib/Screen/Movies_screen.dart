import 'package:bookmyshow1/utils/app_layout.dart';
import 'package:bookmyshow1/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MoviesScreen extends StatelessWidget {
  final Map<String, dynamic> Movie;
  const MoviesScreen({
    Key? key,
    required this.Movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: Applayout.getHeight(400),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Applayout.getHeight(24)),
          color: Styles.primaeryColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Applayout.getHeight(260),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Applayout.getHeight(12)),
              color: Styles.primaeryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${Movie['image']}"),
              ),
            ),
          ),
          const Gap(10),
          Text(Movie['place'],
              style: Styles.headLineStyle2.copyWith(
                color: Color(0xFFCEB6B6),
              )),
          Gap(5),
          Text(Movie['destination'],
              style: Styles.headLineStyle3.copyWith(
                color: Colors.white,
              )),
          Gap(8),
          Text(Movie['note'],
              style: Styles.headLineStyle4.copyWith(
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
