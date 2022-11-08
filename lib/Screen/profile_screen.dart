import 'package:bookmyshow1/Widgets/double_text_widget.dart';
import 'package:bookmyshow1/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Applayout.getHeight(20),
            vertical: Applayout.getHeight(20)),
        children: [
          Gap(Applayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Applayout.getHeight(86),
                width: Applayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Applayout.getHeight(10)),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/img4.png"))),
              ),
              Gap(Applayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Prathmesh Tangade",
                    style: Styles.headLineStyle2,
                  ),
                  Gap(Applayout.getHeight(2)),
                  Text(
                    "Pune Wagholi",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(Applayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Applayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: Applayout.getHeight(3),
                        vertical: Applayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(Applayout.getHeight(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFFEF4F3),
                          ),
                          child: const Icon(
                            Icons.circle_outlined,
                            color: Color(0xD3955A5A),
                            size: 15,
                          ),
                        ),
                        Gap(Applayout.getHeight(5)),
                        const Text(
                          "Premium Status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("you are tapped");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaeryColor,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ],
          ),
          Gap(Applayout.getHeight(20)),
          Divider(
            color: Colors.grey.shade500,
          ),
          Gap(Applayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: Applayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaeryColor,
                    borderRadius:
                        BorderRadius.circular(Applayout.getHeight(18))),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(Applayout.getHeight(30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF264CD2))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Applayout.getHeight(25),
                    vertical: Applayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.lightbulb_outline,
                        color: Styles.primaeryColor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(Applayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You got the Discount ",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "75 % Wow ",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(Applayout.getHeight(25)),
          Text(
            "Amount Deu",
            style: Styles.headLineStyle2,
          ),
          Container(
            child: Column(
              children: [
                Gap(Applayout.getHeight(15)),
                Text(
                  "Rs.350",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 45,
                      color: Styles.primaeryColor),
                ),
                Gap(Applayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ON DATE",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "AMOUNT PAID",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(Applayout.getHeight(20)),
                Column(
                  children: [
                    const ColumnWidget(Str: "24 May 2022 ", date: "600"),
                    Gap(Applayout.getHeight(20)),
                    const ColumnWidget(Str: "08 June 2022", date: "800"),
                    Gap(Applayout.getHeight(20)),
                    const ColumnWidget(Str: "14  July 2022", date: "300"),
                    Gap(Applayout.getHeight(20)),
                    const ColumnWidget(Str: "18 August 2022", date: "500"),
                    Gap(Applayout.getHeight(20)),
                    const ColumnWidget(Str: "24 Oct 2022 ", date: "1000"),
                    Gap(Applayout.getHeight(20)),
                    Gap(Applayout.getHeight(20)),
                  ],
                ),
                Gap(Applayout.getHeight(20)),
                InkWell(
                  onTap: () => print("You are tappped"),
                  child: Center(
                    child: Text(
                      "How to book Tickets",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaeryColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
