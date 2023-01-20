import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 40),
              child: InkWell(
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const I3(),
                  //   ),
                  // );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1A2552)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
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
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: const Text("Full Name",
                  style: TextStyle(color: Color(0xff797E90))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color(0xff1A2552),
                  ),
                  hintText: "John Smith",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        //color: Color(0xFFA12323),
                        ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Email Address",
                      style: TextStyle(color: Color(0xff797E90))),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
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
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("PassWord", style: TextStyle(color: Color(0xff797E90))),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                controller: TextEditingController(),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xff1A2552),
                  ),
                  hintText: "Enter The PassWord",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        //color: Color(0xFFA12323),
                        ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Confirm Password",
                      style: TextStyle(color: Color(0xff797E90))),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xff1A2552),
                  ),
                  hintText: "Enter The Conform PassWord",
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
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const LoginPage()));
                },
                child: Text(
                  "Sign Up ",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don’t have an account? "),
                InkWell(
                  // highlightColor: Color(0xff4C68DA),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Color(0xff4C68DA)),
                  ),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
