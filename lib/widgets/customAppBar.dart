import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paynav_task_app/provider/homepageProvider.dart';
import 'package:paynav_task_app/utils/font.dart';
import 'package:paynav_task_app/utils/sample_data.dart';
import 'package:paynav_task_app/widgets/circles.dart';
import 'package:paynav_task_app/widgets/customDialogBox.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    // final homepageProvider =
    //     Provider.of<HomePageProvider>(context, listen: false);
    print("Scaffold Built");

    // BACKGROUND
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 45, 43, 105),
              Color.fromARGB(255, 26, 0, 135),
              Color.fromARGB(255, 42, 18, 204),
              Color.fromARGB(255, 42, 18, 204),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 77.05, 93.95, 100],
          )),
      child: Stack(
        children: [
          Positioned(
            right: -60,
            top: 40,
            child: Opacity(
              opacity: 0.4000000059604645,
              child: Circles(
                  size: 270,
                  rotationFactor: 1.5,
                  colors: const [
                    Color.fromARGB(153, 172, 122, 186),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0]),
            ),
          ),
          Positioned(
            top: -60,
            left: -100,
            child: Opacity(
              opacity: 0.800000011920929,
              child: Circles(
                  size: 400,
                  rotationFactor: 1.5,
                  colors: const [
                    Color(0xff2E08AC),
                    Color(0xff681AD0),
                    Color(0xff4D0FBA),
                    Color(0xff2F03A1),
                    Color(0xff19018E),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0, 20.63, 38.13, 57.81, 100]),
            ),
          ),
          Positioned(
            right: -30,
            bottom: 40,
            child: Circles(
                size: 270,
                rotationFactor: 1.5,
                colors: const [
                  Color(0xff2A12CC),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0]),
          ),

          // MAIN CONTENT/

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            CupertinoIcons.arrow_left,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("Leader Board",
                              style: Font.myCustomFont(
                                  fsize: 19, fontWeight: FontWeight.w600))
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          showGeneralDialog(
                              context: context,
                              barrierDismissible: true,
                              barrierLabel: MaterialLocalizations.of(context)
                                  .modalBarrierDismissLabel,
                              barrierColor: Colors.black45,
                              transitionDuration:
                                  const Duration(milliseconds: 200),
                              pageBuilder: (BuildContext buildContext,
                                  Animation animation,
                                  Animation secondaryAnimation) {
                                return const CustomDialogBox();
                              });
                        },
                        child: Row(
                          children: [
                            Text("How it works",
                                style: Font.myCustomFont(fsize: 14)),
                            const Image(
                              image: AssetImage("assets/icons/settings.png"),
                              height: 30,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xff1E0082),
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Consumer<HomePageProvider>(
                                builder: (context, value, child) {
                              return GestureDetector(
                                onTap: () {
                                  value.setSelectedIndex(i);
                                },
                                child: Container(
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: value.selectedIndex == i
                                          ? Colors.white
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                      child: Text(
                                    value.titles[i],
                                    style: Font.myCustomFont(
                                        fontWeight: value.selectedIndex == i
                                            ? FontWeight.w700
                                            : FontWeight.w500,
                                        color: value.selectedIndex == i
                                            ? Colors.black
                                            : Colors.white),
                                  )),
                                ),
                              );
                            })
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // PROFILE SECTION
                  Consumer<HomePageProvider>(
                    builder: (context, value, child) {
                      return Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "2",
                                    style: Font.myCustomFont(fsize: 20),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  const Image(
                                    image:
                                        AssetImage("assets/icons/upArrow.png"),
                                    height: 7,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Stack(
                                    children: [
                                      SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: CustomPaint(
                                          painter: ProfileOutlinePainter(),
                                        ),
                                      ),
                                      Positioned.fill(
                                        top: 7,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Image(
                                            image: AssetImage(Profile
                                                .topData[value.selectedIndex][1]
                                                .profile),
                                            height: 65,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    Profile
                                        .topData[value.selectedIndex][1].score
                                        .toString(),
                                    style: Font.myCustomFont(
                                        color: const Color(0xff99B6FF),
                                        fontWeight: FontWeight.w300,
                                        fsize: 25),
                                  ),
                                  Text(
                                    Profile
                                        .topData[value.selectedIndex][1].name,
                                    style: Font.myCustomFont(
                                        fontWeight: FontWeight.w300, fsize: 12),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "3",
                                    style: Font.myCustomFont(fsize: 20),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  const Image(
                                    image: AssetImage(
                                        "assets/icons/downArrow.png"),
                                    height: 7,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Stack(
                                    children: [
                                      SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: CustomPaint(
                                          painter: ProfileOutlinePainter(),
                                        ),
                                      ),
                                      Positioned.fill(
                                        top: 7,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Image(
                                            image: AssetImage(Profile
                                                .topData[value.selectedIndex][2]
                                                .profile),
                                            height: 65,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    Profile
                                        .topData[value.selectedIndex][2].score
                                        .toString(),
                                    style: Font.myCustomFont(
                                        color: const Color(0xff99B6FF),
                                        fontWeight: FontWeight.w300,
                                        fsize: 25),
                                  ),
                                  Text(
                                    Profile
                                        .topData[value.selectedIndex][2].name,
                                    style: Font.myCustomFont(
                                        fontWeight: FontWeight.w300, fsize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                const Image(
                                  image: AssetImage("assets/icons/crown.png"),
                                  height: 40,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 150,
                                      width: 150,
                                      child: CustomPaint(
                                        painter: WinnerProfileOutlinePainter(),
                                      ),
                                    ),
                                    Positioned.fill(
                                      top: 0,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Image(
                                          image: AssetImage(Profile
                                              .topData[value.selectedIndex][0]
                                              .profile),
                                          height: 120,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  Profile.topData[value.selectedIndex][2].score
                                      .toString(),
                                  style: Font.myCustomFont(
                                      color: const Color(0xff99B6FF),
                                      fontWeight: FontWeight.w300,
                                      fsize: 25),
                                ),
                                Text(
                                  Profile.topData[value.selectedIndex][2].name,
                                  style: Font.myCustomFont(
                                      fontWeight: FontWeight.w300, fsize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileOutlinePainter extends CustomPainter {
  double strokeWidth = 12;

  ProfileOutlinePainter({
    this.strokeWidth = 12,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const rect = Rect.fromLTRB(0, 0, 100, 100);
    // TODO: implement paint
    var outlineBrush = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color.fromARGB(255, 76, 25, 195),
          Color.fromARGB(255, 31, 2, 147),
          Color.fromARGB(200, 28, 2, 144),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        // stops: [0.0, 79, 100]
      ).createShader(rect)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        min(size.width / 2, size.height / 2), outlineBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class WinnerProfileOutlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const rect = Rect.fromLTRB(0, 0, 100, 100);
    // TODO: implement paint
    var outlineBrush = Paint()
      ..shader = const LinearGradient(
          colors: [
            Color.fromARGB(135, 76, 25, 195),
            Color.fromARGB(135, 31, 2, 147),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 100]).createShader(rect)
      ..strokeWidth = 20
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2),
        min(size.width / 2, size.height / 2), outlineBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
