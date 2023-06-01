import 'package:flutter/material.dart';

class UserWidgets extends StatelessWidget {
  UserWidgets(
      {required String image,
      required String text,
      required String text2,
      Key? key})
      : super(key: key);
  String image = "";
  String text = "";
  String text2 = "";

  @override
  Widget build(BuildContext context) {
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
