import 'package:flutter/material.dart';
import 'package:medlive/constants.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/home/profile.png')),
            SizedBox(
              height: 15,
            ),
            Text(
              "Alaa Ahmed",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.production_quantity_limits_sharp,
                    color: const Color(0xff0EBE7E),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Text(
                      "orders",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 52,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_circle_right_rounded,
                      color: Color(0xff0EBE7E),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.production_quantity_limits_sharp,
                    color: const Color(0xff0EBE7E),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Text(
                      "bookings",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 52,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_circle_right_rounded,
                      color: Color(0xff0EBE7E),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.production_quantity_limits_sharp,
                    color: const Color(0xff0EBE7E),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Text(
                      "offers",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 52,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_circle_right_rounded,
                      color: Color(0xff0EBE7E),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.production_quantity_limits_sharp,
                    color: const Color(0xff0EBE7E),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Text(
                      "Delete account",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 52,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_circle_right_rounded,
                      color: Color(0xff0EBE7E),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.production_quantity_limits_sharp,
                    color: const Color(0xff0EBE7E),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Text(
                      "Edit Information",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 52,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_circle_right_rounded,
                      color: Color(0xff0EBE7E),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
