import 'package:flutter/material.dart';

class GroupJoinWidget extends StatelessWidget {
  GroupJoinWidget({
    required this.text,
    Key? key}) : super(key: key);

  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF21242D),
                ),
              ),
              // SizedBox(
              //     height: 44,
              //     child: Image.asset("assets/images/group.png")),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xFF458CFF)),
            height: 32,
            width: 70,
            child: Center(
              child: Text(
                "Join",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
