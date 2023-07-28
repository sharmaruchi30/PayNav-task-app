import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/font.dart';

class CustomDialogBox extends StatelessWidget {
  const CustomDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 400,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(16)),
        child: Material(
          type: MaterialType.transparency,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(100, 255, 255, 255),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Image(
                            image: AssetImage("assets/icons/settings.png"),
                            height: 50,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "How it works",
                        style: Font.myCustomFont(
                            fsize: 14, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      CupertinoIcons.xmark,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              //BULLETED POINTS
              // POINT 1
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "\u2022",
                    style: TextStyle(
                        fontSize: 30, height: 0.9, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'At the bottom of the page you can access the ',
                        style: Font.myCustomFont(),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Prizes & Point system',
                            style: Font.myCustomFont(
                                color: const Color(0xffFFC852),
                                fontWeight: FontWeight.w500,
                                fsize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // POINT 2
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "\u2022",
                    style: TextStyle(
                        fontSize: 30, height: 0.9, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text:
                            'The points will be given as per the point system and the prizes will be given as per ranks achieved',
                        style: Font.myCustomFont(fsize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // POINT 3
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "\u2022",
                    style: TextStyle(
                        fontSize: 30, height: 0.9, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text:
                            'You can see several personal & public  Awards & Challenges that can be unlocked in "',
                        style: Font.myCustomFont(),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' My Status and Awards ',
                            style: Font.myCustomFont(
                                color: const Color(0xffFFC852),
                                fontWeight: FontWeight.w500,
                                fsize: 14),
                          ),
                          TextSpan(
                              text: '" page',
                              style: Font.myCustomFont(
                                fsize: 14,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // POINT 4
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "\u2022",
                    style: TextStyle(
                        fontSize: 30, height: 0.9, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text:
                            'Points will be given to unlocked Awards & challenges accepted, & successfully completed.',
                        style: Font.myCustomFont(fsize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
