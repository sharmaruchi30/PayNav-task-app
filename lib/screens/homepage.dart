import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paynav_task_app/provider/homepageProvider.dart';
import 'package:paynav_task_app/screens/samplePage.dart';
import 'package:paynav_task_app/utils/font.dart';
import 'package:paynav_task_app/utils/sample_data.dart';
import 'package:paynav_task_app/widgets/customAppBar.dart';
import 'package:paynav_task_app/widgets/pointsTile.dart';
import 'package:paynav_task_app/widgets/prizeTile.dart';
import 'package:paynav_task_app/widgets/scorecard.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              // clipBehavior: Clip.none,
              children: [
                const CustomAppBar(),
                SizedBox(
                  height: 550,
                ),
                //SELF PROFILE CARD
                const Positioned(
                    bottom: 30,
                    right: 20,
                    left: 20,
                    child: ScoreCard(
                        self: true,
                        position: 41,
                        verified: true,
                        arrow: "assets/icons/downArrow.png",
                        profile: "assets/profiles/41.png",
                        name: "Lalit Thakre",
                        score: 2170)),

                Positioned(
                  bottom: 7,
                  right: 90,
                  left: 90,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => const SamplePage()));
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(63, 0, 0, 0),
                                blurRadius: 8,
                                offset: Offset(0, 4))
                          ]),
                      child: Container(
                        margin: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: const Color(0xff1E0082),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                "My Status and Awards",
                                style: Font.myCustomFont(),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Image(
                              image: AssetImage("assets/icons/arrow-right.png"),
                              height: 15,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80 * 10,
                    child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: ScoreCard(
                                self: Profile.profileData[index].self,
                                position: index + 1,
                                verified: Profile.profileData[index].verified,
                                arrow: Profile.profileData[index].arrow,
                                profile: Profile.profileData[index].profile,
                                name: Profile.profileData[index].name,
                                score: Profile.profileData[index].score),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Consumer<HomePageProvider>(
                    builder: (context, value, child) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () => value.setPrize(),
                            child: Column(
                              children: [
                                Text(
                                  "Prizes",
                                  style: Font.myCustomFont(
                                      fsize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: Color(value.isPrizeSelected
                                          ? 0xff3473E4
                                          : 0xffADAEB6)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                value.isPrizeSelected
                                    ? Container(
                                        height: 8,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            color: Color(0xff3473E4),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10))),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () => value.setPoints(),
                            child: Column(
                              children: [
                                Text(
                                  "Points",
                                  style: Font.myCustomFont(
                                      fsize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: Color(value.isPointSelected
                                          ? 0xff3473E4
                                          : 0xffADAEB6)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                value.isPointSelected
                                    ? Container(
                                        height: 8,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            color: Color(0xff3473E4),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10))),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  Container(
                    height: 1.2,
                    color: const Color(0xff3473E4),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Be the first in your gang to grow up in ranks",
                    style: Font.myCustomFont(
                        color: const Color(0xffADAEB6),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Consumer<HomePageProvider>(
                    builder: (context, value, child) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            value.isPrizeSelected ? "Rank" : "Achivements",
                            style: Font.myCustomFont(
                                color: Colors.black,
                                fsize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            value.isPrizeSelected ? "Prizes" : "Points",
                            style: Font.myCustomFont(
                                color: Colors.black,
                                fsize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Consumer<HomePageProvider>(
                    builder: (context, value, child) {
                      return SizedBox(
                        height: value.isPrizeSelected ? 60 * 6 : 80 * 6,
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.all(0),
                            itemCount: value.isPrizeSelected ? 6 : 8,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: value.isPrizeSelected
                                    ? PrizeTile(
                                        icon1: Prize.prizeData[index].icon1,
                                        rank: Prize.prizeData[index].rank,
                                        icon2: Prize.prizeData[index].icon2,
                                        prizeType:
                                            Prize.prizeData[index].prizeType,
                                        prize: Prize.prizeData[index].prize)
                                    : PointsTile(
                                        title: Points.pointsData[index].title,
                                        points: Points.pointsData[index].point),
                              );
                            }),
                      );
                    },
                  ),
                  SizedBox(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Made With Golden 💛",
                          style: Font.myCustomFont(
                              color: const Color(0xff636575), fsize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
