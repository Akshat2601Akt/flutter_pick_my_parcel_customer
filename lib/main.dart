import 'package:flutter/material.dart';
import 'package:pick_my_parcel_customer/screens/error404_screen.dart';
import 'package:pick_my_parcel_customer/screens/error429_screen.dart';
import 'package:pick_my_parcel_customer/screens/my_orders_screen.dart';
import 'package:pick_my_parcel_customer/screens/profile_screen.dart';
import 'package:pick_my_parcel_customer/screens/home_screen.dart';
import 'package:pick_my_parcel_customer/screens/landing_screen.dart';
import 'package:pick_my_parcel_customer/screens/otpscreen.dart';
import 'package:pick_my_parcel_customer/screens/place_order_details_screen.dart';
import 'package:pick_my_parcel_customer/screens/ratings_feedback_screen.dart';
import 'package:pick_my_parcel_customer/screens/sign_in_screen.dart';
import 'package:pick_my_parcel_customer/screens/sign_up_screen.dart';
import 'package:pick_my_parcel_customer/screens/tncscreen.dart';
import 'package:pick_my_parcel_customer/screens/track_courier_screen.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) => const Error429Screen();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingScreen(),
        '/second': (context) => const LoginScreen(),
        '/third': (context) => const OTPScreen(),
        '/fourth': (context) => const SignUpScreen(),
        '/fifth': (context) => const HomeScreen(),
        '/sixth': (context) => const PlaceOrderDetails(),
        '/eleventh': (context) => const TrackYourCourierScreen(),
        '/thirteenth': (context) => const MyOrdersScreen(),
        '/fourteenth': (context) => const TermsAndConditionsScreen(),
        '/fifteenth': (context) => const ProfileScreen(),
        '/sixteenth': (context) => const RatingsAndFeedbackScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const Error404Screen(),
        );
      },
    );
  }
}
