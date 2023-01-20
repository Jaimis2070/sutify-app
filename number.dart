import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Icon(Icons.arrow_back_ios),
            ),
            const SizedBox(
              height: 15,
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
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: 350,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xdffeeeee),
                            blurRadius: 10,
                            offset: Offset(0, 4))
                      ],
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Colors.black.withOpacity(0.13))),
                  child: Stack(
                    children: [
                      InternationalPhoneNumberInput(
                        onInputChanged: (value) {},
                        selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.DIALOG),
                        inputDecoration: const InputDecoration(
                          border: InputBorder.none,
                          //prefixIcon: Icon(Icons.),
                          contentPadding: EdgeInsets.only(bottom: 15),
                        ),
                        selectorTextStyle: const TextStyle(color: Colors.black),
                      ),
                      Positioned(
                        left: 90,
                        top: 7,
                        child: Container(
                          height: 40,
                          width: 1,
                          color: Colors.black.withOpacity(0.13),
                        ),
                      ),
                      const Positioned(
                        left: 65,
                        top: 12,
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Center(
              child: AnimatedButton(
                enabled: true,
                height: 60,
                width: 350,
                shadowDegree: ShadowDegree.light,
                duration: 10,
                color: const Color(0xff4C68DA),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const Signup()));
                },
                child: const Text(
                  "Save",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
