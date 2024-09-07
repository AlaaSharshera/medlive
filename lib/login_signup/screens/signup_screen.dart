// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';
import 'package:medlive/helper/show_snackbar.dart';
import 'package:medlive/login_signup/components/custom_login_row.dart';
import 'package:medlive/login_signup/components/custombutton.dart';
import 'package:medlive/login_signup/components/customtextfield.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String? email, password;

  bool isloading = false;
  GlobalKey<FormState> formKey = GlobalKey();

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
                      children: [
                        const Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        CustomTextField(
                          onchange: (data) {},
                          hinttext: "Full Name",
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        CustomTextField(
                          onchange: (data) {
                            email = data;
                          },
                          hinttext: "E-mail",
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        CustomTextField(
                          onchange: (data) {
                            password = data;
                          },
                          hinttext: "password",
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Custombutton(
                            buttonColor: const Color(0xff0EBE7E),
                            textColor: Colors.white,
                            buttontext: "Sign Up",
                            image: null,
                            ontap: () async {
                              if (formKey.currentState!.validate()) {
                                isloading = true;
                                setState(() {});
                                try {
                                  await userSignUp();
                                  Navigator.pushNamed(
                                      context, 'congratsscreen');
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'weak-password') {
                                    showSnackBar(
                                        context, 'The password is too weak.');
                                  } else if (e.code == 'email-already-in-use') {
                                    showSnackBar(context,
                                        'The account already exists for that email');
                                  } else if (e.code == 'invalid-email') {
                                    showSnackBar(context,
                                        'invalid email , please enter a valid email');
                                  } else if (e.code == 'wrong-password') {
                                    showSnackBar(
                                        context, 'Please enter a password');
                                  }
                                }
                                // catch (e) {
                                //   showSnackBar(context, 'There is an error');
                                // }
                                isloading = false;
                                setState(() {});
                              }
                            }),
                        CustomLoginRow(
                          ontap: () {
                            Navigator.pushNamed(context, 'login');
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

  Future<void> userSignUp() async {
    final UserCredential user =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
