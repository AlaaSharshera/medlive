import 'package:flutter/material.dart';
import 'package:medlive/login_signup/screens/chatscreen.dart';

class CustomDoctorContainer extends StatelessWidget {
  const CustomDoctorContainer({this.image, this.doctor, super.key});
  final String? image;
  final String? doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 380,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff0EBE7E)),
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(1, 2), blurRadius: 3),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            image!,
            height: 100,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctor!,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Text(
                    "Pharmasist",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 31,
                    width: 119,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "bookdoctorscreen");
                        },
                        style: ButtonStyle(
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                          backgroundColor: const WidgetStatePropertyAll(
                            Color(0xff0EBE7E),
                          ),
                          foregroundColor:
                              const WidgetStatePropertyAll(Colors.white),
                        ),
                        child: const Text("Book now")),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 31,
                    width: 119,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return ChatScreen(
                              image: image!,
                              doctorname: doctor!,
                            );
                          }));
                        },
                        style: ButtonStyle(
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                          backgroundColor: const WidgetStatePropertyAll(
                            Color(0xff0EBE7E),
                          ),
                          foregroundColor:
                              const WidgetStatePropertyAll(Colors.white),
                        ),
                        child: const Text("chat now")),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
