import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';
import 'package:medlive/onboarding/models/onboarding_screen_model.dart';
import 'package:medlive/onboarding/screens/custom_onboarding_screen.dart';

class PagesliderScreen extends StatefulWidget {
  const PagesliderScreen({super.key});

  @override
  State<PagesliderScreen> createState() => _PagesliderScreenState();
}

class _PagesliderScreenState extends State<PagesliderScreen> {
  List<OnboardingScreenModel> onboardingScreens = [
    OnboardingScreenModel(
        image: 'assets/images/onboarding/onboarding1.png',
        text:
            "Welcome to Medlive\nyour one-stop solution for all\nyour healthcare needs",
        buttonText: "Next"),
    OnboardingScreenModel(
        image: 'assets/images/onboarding/onboarding2.png',
        text:
            "Discover a wide range of pharmaceutical\nservices,from medication delivery to\npersonalized health\nconsultations",
        buttonText: "Next"),
    OnboardingScreenModel(
        image: 'assets/images/onboarding/onboarding3.png',
        text:
            "Get started in a few simple steps!\nSign up to experience the future\nof pharmacy services at your\nfingertips",
        buttonText: "Get Started"),
  ];
  PageController newpageController = PageController();
  int pagenum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: PageView.builder(
          controller: newpageController,
          physics: const ScrollPhysics(),
          onPageChanged: (value) {
            setState(() {
              pagenum = value;
            });
          },
          itemCount: onboardingScreens.length,
          itemBuilder: (BuildContext context, index) {
            return CustomOnboardingScreen(
              onboardingScreenModel: onboardingScreens[index],
              ontap: () {
                (index == 2)
                    ? Navigator.pushNamed(context, 'login_signup')
                    : newpageController.animateToPage(index + 1,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn);
              },
              pagenum: pagenum,
            );
          }),
    );
  }
}
