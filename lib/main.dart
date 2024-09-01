import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medlive/firebase_options.dart';
import 'package:medlive/home/screens/bookdoctor_screen.dart';
import 'package:medlive/home/screens/bookingdone_screen.dart';
import 'package:medlive/home/screens/chatscreen.dart';
import 'package:medlive/home/screens/contactdoctor.dart';
import 'package:medlive/home/screens/homepage.dart';
import 'package:medlive/home/screens/navbar_screen.dart';
import 'package:medlive/home/screens/profilescreen.dart';
import 'package:medlive/home/screens/viewmore_products_screen.dart';
import 'package:medlive/login_signup/screens/congrats.dart';
import 'package:medlive/login_signup/screens/login_screen.dart';
import 'package:medlive/login_signup/screens/login_signup.dart';
import 'package:medlive/login_signup/screens/register.dart';
import 'package:medlive/login_signup/screens/signup_screen.dart';
import 'package:medlive/login_signup/screens/welcomeback.dart';
import 'package:medlive/onboarding/screens/first_screen.dart';
import 'package:medlive/onboarding/screens/pageslider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Medlive());
}

class Medlive extends StatelessWidget {
  const Medlive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => const LoginScreen(),
        'signup': (context) => const SignupScreen(),
        'register': (context) => const RegisterScreen(),
        'login_signup': (context) => const LoginSignupScreen(),
        'pagesliderscreen': (context) => const PagesliderScreen(),
        'bookdoctorscreen': (context) => const BookdoctorScreen(),
        'homepage': (context) => const Homepage(),
        'chatpage': (context) => const ChatScreen(),
        'contactdoctor': (context) => const Contactdoctor(),
        'firstscreen': (context) => const FirstScreen(),
        'congratsscreen': (context) => const CongratsScreen(),
        'welcomebackscreen': (context) => const WelcomebackScreen(),
        'mainscreen': (context) => const MainScreen(),
        'bookdone': (context) => BookingdoneScreen(),
        'profile': (context) => const Profilescreen(),
        'ViewmoreProductsScreen': (context) => const ViewmoreProductsScreen(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'homepage',
    );
  }
}
