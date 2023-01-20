import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:suitify/forgot.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suitify/i_3.dart';
import 'package:suitify/main.dart';
import 'package:suitify/number.dart';
import 'package:suitify/sign.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: InkWell(
              child: const Icon(
                Icons.arrow_back_ios,
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const I3(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Loging In Now",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1A2552)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Please enter your information below in order to login to your account.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff797E90)),
              ),
            ),
          ),
          // Text(
          //   "Email Address",
          //   style: TextStyle(
          //       fontSize: 15,
          //       fontWeight: FontWeight.bold,
          //       color: Color(0xff797E90)),
          // ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Text("Email Address",
                style: TextStyle(color: Color(0xff797E90))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.mail_outline,
                  color: Color(0xff1A2552),
                ),
                hintText: "johnsmith@gmail.com",
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                      //color: Color(0xFFA12323),
                      ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("PassWord",
                    style: TextStyle(color: Color(0xff797E90))),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Forgot()));
                    },
                    child: const Text("Forgot Password? ",
                        style: TextStyle(color: Color(0xff1A2552))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.mail_outline,
                  color: Color(0xff1A2552),
                ),
                hintText: "johnsmith@gmail.com",
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                      //color: Color(0xFFA12323),
                      ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: AnimatedButton(
              enabled: true,
              height: 60,
              width: 330,
              shadowDegree: ShadowDegree.light,
              duration: 10,
              color: const Color(0xff4C68DA),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Signup()));
              },
              child: const Text(
                "Login In ",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: AnimatedButton(
                enabled: true,
                height: 60,
                width: 330,
                shadowDegree: ShadowDegree.light,
                duration: 10,
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Number()));
                },
                child: Row(
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "sign in with number",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                )),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don’t have an account? "),
              InkWell(
                // highlightColor: Color(0xff4C68DA),
                child: const Text(
                  "Create Now",
                  style: TextStyle(color: Color(0xff4C68DA)),
                ),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
