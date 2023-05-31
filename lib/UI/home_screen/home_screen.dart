import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homeworks/utils/my_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
      children: [
        SizedBox(
          height: height * (442 / 812),
          width: width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(MyImages.homePhoto),
              SizedBox(
                height: 50,
                width: width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100)),
                      ),
                      height: 50,
                      width: width,
                    ),
                    SvgPicture.asset(MyImages.scrollTool),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 34,
                    width: 78,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xFFE9F9F2)),
                    child: const Center(
                      child: Text(
                        "Popular",
                        style: TextStyle(color: Color(0xFF15BE77)),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 34,
                    width: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFFE9F9F2)),
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: SvgPicture.asset(MyImages.location),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 34,
                    width: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFFFFE8E8)),
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: SvgPicture.asset(MyImages.heart),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Rainbow Sandwich \nSugarless",
                style: TextStyle(
                    color: const Color(0xfF09051C),
                    fontSize: (height > 812) ? 27 : 20,
                    fontWeight: FontWeight.w800),
              ),
              Row(
                children: [
                  SvgPicture.asset(MyImages.star),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "4,8 Rating",
                    style: TextStyle(
                      color: Color(0xFF3B3B3B),
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  SvgPicture.asset(MyImages.shopping),
                  const SizedBox(
                    width: 5.67,
                  ),
                  const Text(
                    "2000+ Order",
                    style: TextStyle(
                      color: Color(0xFF3B3B3B),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                  "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum."),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: SizedBox(
                  width: width,
                  height: height > 600 ? 57 : 45,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                          backgroundColor: const MaterialStatePropertyAll<Color>(
                              Color(0xFF53E88B))),
                      child: const Text(
                        "Add to chast",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
