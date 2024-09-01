import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';
import 'package:medlive/home/components/customdoctor_container.dart';

class Contactdoctor extends StatelessWidget {
  const Contactdoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            Container(
              height: 207,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff0EBE7E),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/home/profile.png'),
                          radius: 24,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Hi , Alaa !",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 43,
                    width: 320,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 1),
                              spreadRadius: 2,
                              blurRadius: 2),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search for a doctor",
                        hintStyle: TextStyle(color: Colors.grey),
                        icon: Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Find  your doctor",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            const CustomDoctorContainer(
              image: 'assets/images/home/pharmasist1.png',
              doctor: 'Dr/Mohamed Adel',
            ),
            const CustomDoctorContainer(
              image: 'assets/images/home/pharmasist2.png',
              doctor: 'Dr/Essam Younes',
            ),
            const CustomDoctorContainer(
              image: 'assets/images/home/pharmasist3.png',
              doctor: 'Dr/Ali Badr',
            ),
          ],
        ),
      ),
    );
  }
}
