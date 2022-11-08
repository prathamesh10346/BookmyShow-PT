import 'package:bookmyshow1/Screen/Ticket_view.dart';
import 'package:bookmyshow1/Widgets/ticket_tabs.dart';
import 'package:bookmyshow1/utils/app_infolist.dart';
import 'package:bookmyshow1/utils/app_layout.dart';
import 'package:bookmyshow1/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: Applayout.getHeight(20),
              vertical: Applayout.getWidth(20)),
          children: [
            Gap(Applayout.getHeight(40)),
            Text(
              "Tickets",
              style: Styles.headLineStyle1,
            ),
            Gap(Applayout.getHeight(20)),
            const AppTicketTabs(FirstTab: "Upcoming", SecondTab: "Previous"),
            Gap(Applayout.getHeight(20)),
            Container(
                padding: EdgeInsets.only(left: Applayout.getHeight(15)),
                child: TicketView(
                  theatres: TheatresList[0],
                  isColor: true,
                )),
            // Gap(Applayout.getHeight(30)),
            Container(
              // decoration: BoxDecoration(
              //   color: const Color(0xFF628395),
              //   borderRadius: BorderRadius.only(
              //       topLeft: Radius.circular(Applayout.getHeight(21)),
              //       topRight: Radius.circular(Applayout.getHeight(21))),
              // ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Applayout.getHeight(20)),
              ),

              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 15),

              child: Column(
                children: [
                  Gap(Applayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Seat no:",
                            style: Styles.headLineStyle3,
                          ),
                          Gap(Applayout.getHeight(5)),
                          Text(
                            "23-B",
                            style: Styles.textStyle,
                          ),
                          Gap(Applayout.getHeight(10)),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Screen No:",
                            style: Styles.headLineStyle3,
                          ),
                          Gap(Applayout.getHeight(5)),
                          Text(
                            "2",
                            style: Styles.textStyle,
                          ),
                          Gap(Applayout.getHeight(10)),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
