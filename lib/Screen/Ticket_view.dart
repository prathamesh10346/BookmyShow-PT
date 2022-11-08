import 'package:bookmyshow1/Widgets/thick_container.dart';
import 'package:bookmyshow1/main.dart';
import 'package:bookmyshow1/utils/app_layout.dart';
import 'package:bookmyshow1/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> theatres;
  final bool? isColor;
  const TicketView({Key? key, required this.theatres, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: Applayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: Applayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF628395) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Applayout.getHeight(21)),
                    topRight: Radius.circular(Applayout.getHeight(21))),
              ),
              padding: EdgeInsets.all(Applayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "   ",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            theatres['from']['name'],
                            style: isColor == null
                                ? Styles.headLineStyle2
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height:
                                Applayout.getHeight(Applayout.getHeight(24)),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                print(
                                    "The width is ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                      width: Applayout.getWidth(3),
                                      height: Applayout.getHeight(1),
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: isColor == null
                                              ? Colors.white
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.56,
                              child: Icon(
                                Icons.local_movies_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : const Color(0xFFBACCF7),
                              ),
                            ),
                          ),
                        ],
                      )),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: EdgeInsets.all(Applayout.getHeight(8.0)),
                        child: Text(
                          theatres['to']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("  "),
                      Expanded(child: Container()),
                      Center(
                          child: Text(
                        theatres['to']['name'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: isColor == null ? const Color(0xFF262A53) : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: Applayout.getHeight(20),
                    width: Applayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Applayout.getHeight(10)),
                            bottomRight:
                                Radius.circular(Applayout.getHeight(10)),
                          )),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(Applayout.getHeight(12.0)),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: Applayout.getWidth(5),
                                    height: Applayout.getHeight(1),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: isColor == null
                                              ? Colors.white
                                              : Colors.grey.shade300),
                                    ),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: Applayout.getHeight(20),
                    width: Applayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Applayout.getHeight(10)),
                            bottomLeft:
                                Radius.circular(Applayout.getHeight(10)),
                          )),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF262A53) : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Applayout.getHeight(21)),
                    bottomRight: Radius.circular(Applayout.getHeight(21))),
              ),
              padding: EdgeInsets.all(Applayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                theatres['Exact'],
                                style: isColor == null
                                    ? Styles.headLineStyle3
                                        .copyWith(color: Colors.white)
                                    : Styles.headLineStyle3,
                              ),
                              const Gap(5),
                              Text(
                                theatres['place'],
                                style: isColor == null
                                    ? Styles.headLineStyle4
                                        .copyWith(fontSize: 13)
                                        .copyWith(color: Colors.white)
                                    : Styles.headLineStyle4,
                              )
                            ],
                          ),
                          // Text(
                          //   "  ",
                          //   style: Styles.headLineStyle3
                          //       .copyWith(color: Colors.white),
                          // )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            theatres['state'],
                            style: isColor == null
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            theatres['time'],
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(fontSize: 13)
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
