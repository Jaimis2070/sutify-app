import 'dart:async';

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:suitify/slider.dart';

// import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) {
        return MaterialApp(
          title: 'Suitify',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          home: const MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Timer(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Indecator()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              "asset/main.png",
            ),
          ),
          Text(
            "Suitify",
            style: TextStyle(
              fontSize: 36.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xff1A2552),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                FontAwesomeIcons.instagram,
                size: 18,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                FontAwesomeIcons.snapchatSquare,
                size: 18,
                color: Colors.amber,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                FontAwesomeIcons.facebook,
                size: 18,
                color: Color.fromARGB(255, 39, 101, 224),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                FontAwesomeIcons.twitter,
                size: 18,
                color: Colors.blue,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
