import 'package:flutter/material.dart';
import 'package:suitify/i_2.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class I1 extends StatefulWidget {
  const I1({Key? key}) : super(key: key);

  @override
  State<I1> createState() => _I1State();
}

class _I1State extends State<I1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 320, top: 20),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const I2()));
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          SizedBox(
            height: 80,
          ),
          Center(child: Image.asset("asset/1.png")),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Find Friends & Get Inspiration",
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
          )
        ],
      ),
    );
  }
}
