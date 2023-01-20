import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:suitify/change_password.dart';
import 'package:suitify/forgot.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final String requiredNumber = '123456';
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
                      MaterialPageRoute(builder: (context) => const Forgot()));
                },
                child: const Icon(Icons.arrow_back_ios)),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "OTP Code",
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
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: PinCodeTextField(
              appContext: context,
              length: 6,
              onChanged: (value) {
                print(value);
              },

              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  inactiveColor: Colors.grey,
                  inactiveFillColor: Colors.blue,
                  activeColor: Colors.amber,
                  borderRadius: BorderRadius.circular(10)),
              onCompleted: (value) {
                if (value == requiredNumber) {
                  print("valid pin");
                } else {
                  print("invalid pin");
                }
              },
            ),
          ),
         const  SizedBox(
            height: 30,
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChangePassword()));
              },
              child: const Text(
                "Conform",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: const Text(
                "Resend",
                style: TextStyle(fontSize: 15, color: Color(0xff4C68DA)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
