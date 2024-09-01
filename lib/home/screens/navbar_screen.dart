import 'package:flutter/material.dart';
import 'package:medlive/home/screens/contactdoctor.dart';
import 'package:medlive/home/screens/homepage.dart';
import 'package:medlive/home/screens/profilescreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int bottonbarindex = 0;
  List pages = const [Homepage(), Contactdoctor(), Profilescreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff0EBE7E),
        unselectedItemColor: Colors.grey,
        currentIndex: bottonbarindex,
        onTap: (value) {
          setState(() {
            bottonbarindex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: "Contactdoctor"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile")
        ],
      ),
      body: pages[bottonbarindex],
    );
  }
}
