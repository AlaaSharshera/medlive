import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';
import 'package:medlive/login_signup/components/custom_divider.dart';
import 'package:medlive/login_signup/components/custom_login_row.dart';
import 'package:medlive/login_signup/components/custombutton.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Color? buttonColor1 = const Color(0xff0EBE7E);

  Color? textColor1 = Colors.white;

  Color? buttonColor2 = Colors.white;

  Color? textColor2 = const Color(0xff0EBE7E);
  Color? buttonColor3 = const Color(0xff0EBE7E);

  Color? textColor3 = Colors.white;

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
                  const Image(
                    image: AssetImage('assets/images/general/logo.png'),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Custombutton(
                    textColor: textColor1,
                    buttonColor: buttonColor1,
                    image:
                        Image.asset('assets/images/login_signup/facebook.png'),
                    buttontext: "Sign up with facebook",
                    ontap: () {
                      setState(() {
                        buttonColor1 = const Color(0xff0EBE7E);
                        textColor1 = Colors.white;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Custombutton(
                    textColor: textColor2,
                    buttonColor: buttonColor2,
                    buttontext: "Sign up with google",
                    image: Image.asset('assets/images/login_signup/google.png'),
                    ontap: () {
                      setState(() {
                        buttonColor2 = const Color(0xff0EBE7E);
                        textColor2 = Colors.white;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const CustomDivider(),
                  const SizedBox(
                    height: 25,
                  ),
                  Custombutton(
                    textColor: textColor3,
                    buttonColor: buttonColor3,
                    image: null,
                    buttontext: "Create account",
                    ontap: () {
                      setState(() {
                        buttonColor3 = const Color(0xff0EBE7E);
                        textColor3 = Colors.white;
                      });
                      Navigator.pushNamed(context, 'signup');
                    },
                  ),
                  CustomLoginRow(
                    ontap: () {
                      Navigator.pushNamed(context, 'login');
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
