import 'package:bookmyshow1/Screen/Movies_screen.dart';
import 'package:bookmyshow1/Screen/Ticket_view.dart';
import 'package:bookmyshow1/Widgets/double_text_widget.dart';
import 'package:bookmyshow1/utils/app_infolist.dart';
import 'package:bookmyshow1/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(20)),
          child: Column(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: Styles.headLineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Book tickets",
                        style: Styles.headLineStyle1,
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/images/logoo.jpeg"),
                      ),
                    ),
                  )
                ],
              ),
              const Gap(25),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Color(0xFFBFC205),
                    ),
                    Gap(5),
                    Text(
                      "Search",
                    )
                  ],
                ),
              ),
              const Gap(40),
              const AppDoubleText(
                  bigText: "Nearby Theaters", smalltext: "View all")
            ],
          ),
        ),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: TheatresList.map((singletheatres) => TicketView(
                  theatres: singletheatres,
                )).toList(),
          ),
        ),
        const Gap(15),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleText(
                bigText: "New Movie", smalltext: "View all")),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: MovieList.map((singleMovie) => MoviesScreen(
                  Movie: singleMovie,
                )).toList(),
          ),
        ),
        const Gap(10),
      ]),
    );
  }
}
