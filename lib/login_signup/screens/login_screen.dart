import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';
import 'package:medlive/helper/show_snackbar.dart';
import 'package:medlive/login_signup/components/custom_divider.dart';
import 'package:medlive/login_signup/components/custombutton.dart';
import 'package:medlive/login_signup/components/customtextfield.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color? buttonColor1 = kPrimaryColor;

  Color? textColor1 = const Color(0xff0EBE7E);

  Color? buttonColor2 = kPrimaryColor;

  Color? textColor2 = const Color(0xff0EBE7E);
  String? email, password;

  GlobalKey<FormState> formKey = GlobalKey();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      progressIndicator: const CircularProgressIndicator(
        color: Colors.green,
      ),
      dismissible: true,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                child:
                    Image.asset('assets/images/login_signup/leftdecore.png')),
            Positioned(
                top: 0,
                right: 0,
                child:
                    Image.asset('assets/images/login_signup/rightdecore.png')),
            Center(
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: const Color(0xff0EBE7E),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back),
                                iconSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Log in",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        CustomTextField(
                          hinttext: "E-mail Address",
                          onchange: (data) {
                            email = data;
                          },
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        CustomTextField(
                          onchange: (data) {
                            password = data;
                          },
                          hinttext: "Password",
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 20),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forget Password?",
                              style: TextStyle(
                                color: Color(0xff0EBE7E),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Custombutton(
                            buttonColor: const Color(0xff0EBE7E),
                            textColor: Colors.white,
                            buttontext: "Log in",
                            image: null,
                            ontap: () async {
                              if (formKey.currentState!.validate()) {
                                isloading = true;
                                setState(() {});
                                try {
                                  await userLogIn();
                                  Navigator.pushNamed(
                                      context, 'welcomebackscreen');
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'invalid-credential') {
                                    showSnackBar(
                                        context, 'Incorrect Information');
                                  } else {
                                    showSnackBar(context, '$e');
                                  }
                                }
                                isloading = false;
                                setState(() {});
                              }
                            }),
                        const SizedBox(
                          height: 25,
                        ),
                        const CustomDivider(),
                        const SizedBox(
                          height: 25,
                        ),
                        Custombutton(
                          textColor: textColor1,
                          buttonColor: buttonColor1,
                          image: Image.asset(
                              'assets/images/login_signup/facebook.png'),
                          buttontext: "log in with facebook",
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
                          image: Image.asset(
                              'assets/images/login_signup/google.png'),
                          buttontext: "log in with google",
                          ontap: () {
                            setState(() {
                              buttonColor2 = const Color(0xff0EBE7E);
                              textColor2 = Colors.white;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> userLogIn() async {
    final UserCredential user =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
