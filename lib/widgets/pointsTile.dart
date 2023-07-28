import 'package:flutter/material.dart';
import 'package:paynav_task_app/utils/font.dart';

class PointsTile extends StatelessWidget {
  final String title;
  final String points;
  const PointsTile({super.key, required this.title, required this.points});

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
          Text(
            title,
            style: Font.myCustomFont(
                fontWeight: FontWeight.w500, fsize: 14, color: Colors.black),
          ),
          Text(
            points,
            style: Font.myCustomFont(
                fontWeight: FontWeight.w700, fsize: 15, color: Colors.black),
          )
        ],
      ),
    );
  }
}
