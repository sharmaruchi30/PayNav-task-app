import 'package:flutter/material.dart';
import 'package:paynav_task_app/utils/font.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "NEW PAGE",
          style: Font.myCustomFont(
              color: Colors.black, fontWeight: FontWeight.w600, fsize: 28),
        ),
      ),
    );
  }
}
