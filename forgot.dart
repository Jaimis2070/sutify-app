import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:suitify/login.dart';
import 'package:suitify/otp.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                child: const Icon(Icons.arrow_back_ios)),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Enter Phone Number",
              style: TextStyle(
                fontSize: 30,
                color: Color(0xff1A2552),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Please enter your information below in order to login to your account.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Color(0xff797E90)),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
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
            height: 40,
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
                    MaterialPageRoute(builder: (context) => const Otp()));
              },
              child: const Text(
                "Reset Password ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: const Text(
                "cancle",
                style: TextStyle(fontSize: 15, color: Color(0xff4C68DA)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
