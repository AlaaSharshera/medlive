import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';
import 'package:medlive/login_signup/components/custombutton.dart';
import 'package:medlive/login_signup/components/customtextfield.dart';

class BookdoctorScreen extends StatelessWidget {
  const BookdoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assets/images/login_signup/leftdecore.png')),
          Positioned(
              top: 0,
              right: 0,
              child: Image.asset('assets/images/login_signup/rightdecore.png')),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Book Now",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                CustomTextField(
                  hinttext: "Name",
                ),
                const SizedBox(
                  height: 35,
                ),
                CustomTextField(
                  hinttext: "Address",
                ),
                const SizedBox(
                  height: 35,
                ),
                CustomTextField(
                  hinttext: "phone",
                ),
                const SizedBox(
                  height: 35,
                ),
                CustomTextField(
                  hinttext: "Day",
                ),
                const SizedBox(
                  height: 50,
                ),
                Custombutton(
                    buttonColor: const Color(0xff0EBE7E),
                    textColor: Colors.white,
                    buttontext: "Book",
                    ontap: () {
                      Navigator.pushNamed(context, 'bookdone');
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
