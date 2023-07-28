import 'package:flutter/material.dart';

import '../utils/font.dart';

class ScoreCard extends StatelessWidget {
  final bool self;
  final int position;
  final bool verified;
  final String arrow;
  final String profile;
  final String name;
  final int score;

  const ScoreCard(
      {super.key,
      required this.self,
      required this.position,
      required this.verified,
      required this.arrow,
      required this.profile,
      required this.name,
      required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: const Color(0xffF4ECFF),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: const Color.fromARGB(63, 0, 0, 0),
                blurRadius: self ? 8 : 0)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    position.toString(),
                    style: Font.myCustomFont(
                      fsize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Image(
                    image: AssetImage(
                      arrow,
                    ),
                    height: 7,
                  )
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image(
                    image: AssetImage(profile),
                    height: 60,
                  ),
                  verified
                      ? Positioned(
                          right: -10,
                          bottom: self ? 32 : 0,
                          child: const Image(
                            image: AssetImage("assets/icons/verified.png"),
                            height: 25,
                          ),
                        )
                      : const SizedBox()
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                name,
                style: Font.myCustomFont(color: Colors.black),
              )
            ],
          ),
          Text(
            score.toString(),
            style: Font.myCustomFont(
                fsize: 23, color: Colors.black, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
