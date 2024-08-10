import 'package:flutter/material.dart';
import 'package:medlive/onboarding/models/onboarding_screen_model.dart';

class CustomOnboardingScreen extends StatefulWidget {
  const CustomOnboardingScreen(
      {required this.onboardingScreenModel,
      required this.ontap,
      required this.pagenum,
      super.key});
  final OnboardingScreenModel? onboardingScreenModel;
  final VoidCallback? ontap;
  final int? pagenum;

  @override
  State<CustomOnboardingScreen> createState() => _CustomOnboardingScreenState();
}

class _CustomOnboardingScreenState extends State<CustomOnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          left: 0,
          top: 0,
          child: Image(
            image: AssetImage('assets/images/general/ellipse.png'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 90,
              ),
              ClipOval(
                child: Image(
                  image: AssetImage(widget.onboardingScreenModel!.image!),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                widget.onboardingScreenModel!.text!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 57,
                width: 329,
                child: ElevatedButton(
                  onPressed: widget.ontap!,
                  style: ButtonStyle(
                    backgroundColor:
                        const WidgetStatePropertyAll(Color(0xff0EBE7E)),
                    foregroundColor: const WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    widget.onboardingScreenModel!.buttonText!,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 3; i++)
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: 10,
                      width: (widget.pagenum == i) ? 15 : 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (widget.pagenum == i)
                            ? const Color(0xff0EBE7E)
                            : Colors.grey,
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
