import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/my_image.dart';

class AddWidget extends StatelessWidget {
  AddWidget({required this.text, Key? key}) : super(key: key);

  String text = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(MyImages.plus),
            ),
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: Color(0xFFE4E6EA),
              borderRadius: BorderRadius.circular(35),
            ),
          ),
        ],
      ),
    );
  }
}
