import 'package:flutter/material.dart';

import '../utils/font.dart';

class PrizeTile extends StatelessWidget {
  final String icon1;
  final String rank;
  final String icon2;
  final String prizeType;
  final String prize;
  const PrizeTile(
      {super.key,
      required this.icon1,
      required this.rank,
      required this.icon2,
      required this.prizeType,
      required this.prize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Color(0xffDDDDDD), width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(
                image: AssetImage(icon1),
                height: 30,
              ),
              Text(
                rank,
                style: Font.myCustomFont(color: Colors.black, fsize: 18),
              )
            ],
          ),
          SizedBox(
            width: 180,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage(icon2),
                      height: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      prizeType,
                      style: Font.myCustomFont(color: const Color(0xffADAEB6)),
                    ),
                  ],
                ),
                Text(
                  prize,
                  style: Font.myCustomFont(
                      color: Colors.black,
                      fsize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
