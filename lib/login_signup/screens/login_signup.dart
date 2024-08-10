import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';
import 'package:medlive/login_signup/components/custombutton.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  Color? buttonColor1 = Colors.white;
  Color? textColor1 = const Color(0xff0EBE7E);
  Color? buttonColor2 = Colors.white;
  Color? textColor2 = const Color(0xff0EBE7E);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_signup/login_signup.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 70),
              child: Text(
                "The best App for\n online Pharmacy",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0EBE7E)),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Custombutton(
                    textColor: textColor1,
                    buttonColor: buttonColor1,
                    image: null,
                    buttontext: "Login",
                    ontap: () {
                      setState(() {
                        buttonColor1 = const Color(0xff0EBE7E);
                        textColor1 = Colors.white;
                      });
                      Navigator.pushNamed(context, 'login');
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Custombutton(
                    textColor: textColor2,
                    buttonColor: buttonColor2,
                    buttontext: "Sign up",
                    image: null,
                    ontap: () {
                      setState(() {
                        buttonColor2 = const Color(0xff0EBE7E);
                        textColor2 = Colors.white;
                      });
                      Navigator.pushNamed(context, 'register');
                    },
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
