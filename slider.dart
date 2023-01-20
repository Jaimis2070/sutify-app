import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:suitify/i_1.dart';
import 'package:suitify/i_2.dart';
import 'package:suitify/i_3.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class Indecator extends StatefulWidget {
  const Indecator({Key? key}) : super(key: key);

  @override
  State<Indecator> createState() => _IndecatorState();
}

class _IndecatorState extends State<Indecator> {
  PageController _pageController = new PageController();
  List page = [
    const I1(),
    const I2(),
    const I3(),
  ];
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          allowImplicitScrolling: false,
          controller: _pageController,
          children: const [
            I1(),
            I2(),
            I3(),
          ],
        ),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                      dotWidth: 15,
                      dotHeight: 12,
                      dotColor: Color(0xffE1F0FF),
                      activeDotColor: Color(0xff4C68DA)),
                  onDotClicked: (index) => _pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.bounceInOut,
                      )),
            ),
            SizedBox(
              height: 160,
            )
          ],
        )
      ],
    ));
  }
}
