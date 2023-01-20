import 'package:animated_button/animated_button.dart';

import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suitify/login.dart';

class I3 extends StatefulWidget {
  const I3({Key? key}) : super(key: key);

  @override
  State<I3> createState() => _I3State();
}

class _I3State extends State<I3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Center(child: Image.asset("asset/3.png")),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Attend Events & Hangout With Friends",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.2,
                fontSize: 30,
                color: const Color(0xff1A2552),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text(
              "Find friends on social platform ipsum dolor sit amet consectetur adipiscing elit.",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                wordSpacing: 2,
                fontSize: 15,
                color: const Color(0xff797E90),
              ),
            ),
          ),
          SizedBox(
            height: 160,
          ),
          AnimatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
            enabled: true,
            color: const Color(0xff4C68DA),
            shadowDegree: ShadowDegree.light,
            child: Text(
              "Next",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          )
        ],
      ),
    );
  }
}
