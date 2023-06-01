import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homeworks/UI/home_screen/widgets/add_widget.dart';
import 'package:homeworks/UI/home_screen/widgets/group_join_widget.dart';
import 'package:homeworks/UI/home_screen/widgets/users_widgets.dart';

import '../../utils/my_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(MyImages.arrow),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Chat",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF21242D)),
                  ),
                  Spacer(),
                  SvgPicture.asset(MyImages.search),
                ],
              ),
            ),
            AddWidget(text: "Group"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Container(
                height: 1,
                color: Color(0xFFE6E8EC),
              ),
            ),
            GroupJoinWidget(text: "Physic Class"),
            GroupJoinWidget(text: "Biology Class"),
            AddWidget(text: "Messages"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Container(
                height: 1,
                color: Color(0xFFE6E8EC),
              ),
            ),
            getUI(image: MyImages.img,  text: "Sanderly Suly", text2: "Have you done your homework yet?"),
            getUI(image: MyImages.img2,  text: "Erward Dory", text2: "Hi, how old are you?"),
            getUI(image: MyImages.img3,  text: "Alex Fendere", text2: "How are you doing?"),
            getUI(image: MyImages.img4,  text: "David Bob", text2: "No, i am best"),
          ],
        ),
      ),
    );
  }

  Widget getUI({
    required String image,
    required String text,
    required String text2,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Row(
        children: [
          Container(height: 44, width: 44, child: Image.asset(image)),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Color(0xFF21242D),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  color: Color(0xFF757C8E),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
