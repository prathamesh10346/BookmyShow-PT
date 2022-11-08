import 'package:bookmyshow1/Widgets/icon_text_widget.dart';
import 'package:bookmyshow1/Widgets/ticket_tabs.dart';
import 'package:bookmyshow1/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../Widgets/double_text_widget.dart';
import '../utils/app_infolist.dart';
import '../utils/app_style.dart';
import 'Search_page_movie.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Applayout.getWidth(20),
            vertical: Applayout.getHeight(20)),
        children: [
          Gap(Applayout.getHeight(40)),
          Text(
            "Where are\n you Looking For?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: Applayout.getWidth(35)),
          ),
          Gap(Applayout.getHeight(20)),
          AppTicketTabs(
            FirstTab: "Tickets",
            SecondTab: "Nearby Theatres",
          ),
          Gap(Applayout.getHeight(20)),
          const AppIconText(icon: Icons.local_movies, text: "Movie"),
          Gap(Applayout.getHeight(20)),
          const AppIconText(
              icon: Icons.movie_creation_rounded, text: "Up coming"),
          Gap(Applayout.getHeight(25)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: Applayout.getWidth(15),
                  horizontal: Applayout.getHeight(15)),
              decoration: BoxDecoration(
                  color: Color(0xDF3ACAA8),
                  borderRadius: BorderRadius.circular(Applayout.getWidth(10))),
              child: Center(
                child: Text(
                  "FInd Theatres",
                  style: Styles.textStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
              )),
          Gap(Applayout.getHeight(40)),
          const AppDoubleText(
              bigText: "Upcoming Movies", smalltext: "View all"),
          Gap(Applayout.getHeight(15)),
          Column(
            children: UpcomigMoviesList.map((singletheatres) => UpdatedMovies(
                  Movie: singletheatres,
                )).toList(),
          ),

          // UpcomigMovies
        ],
      ),
    );
  }
}
