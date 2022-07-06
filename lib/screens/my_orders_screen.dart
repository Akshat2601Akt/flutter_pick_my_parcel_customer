import 'package:flutter/material.dart';
import 'package:pick_my_parcel_customer/widgets/bottom_navigation_bar.dart';
import '../constants/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/current_order_card.dart';
import '../widgets/previous_order_card.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0.97),
      appBar:
      CustomAppBar(
        screenHeight: screenHeight,
        screenWidth: screenWidth,
        title: 'My Orders',
        ),
      bottomNavigationBar:
      Container(color: primaryColor2, child: const CustomBottomBar()),
      body: SafeArea(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            SizedBox(
              height: screenHeight * 0.027,
            ),
            Stack(children: [
              Container(
                height: screenHeight * 1.1,
                width: screenWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(screenHeight * 0.0338),
                      topRight: Radius.circular(screenHeight * 0.0338),
                    ),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.03),
                          offset: Offset(0.0, -15.0),
                          spreadRadius: 0.0,
                          blurRadius: 40.0)
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight * 0.0225, left: screenWidth * 0.079),
                  child: Text(
                    'Current Orders (1)',
                    style: TextStyle(
                        fontFamily: 'Archivo',
                        fontWeight: FontWeight.w700,
                        fontSize: screenHeight * 0.0225,
                        letterSpacing: 0.5),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.135,
                left: 0.0,
                right: 0.0,
                child: Container(
                  height: screenHeight,
                  decoration: BoxDecoration(
                      color: primaryColor2,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(screenHeight * 0.0564),
                        topRight: Radius.circular(screenHeight * 0.0564),
                      ),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.03),
                            spreadRadius: 5.0,
                            blurRadius: 5.0)
                      ]),
                ),
              ),
              Positioned(
                top: screenHeight * 0.067,
                left: 0.0,
                right: 0.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CurrentOrderCard(
                        trackingID: '1735272983',
                        pickupCity: 'New Delhi',
                        deliveryCity: 'Bangalore',
                        pickupPin: '110030',
                        deliveryPin: '560062',
                        orderValue: '₹5234',
                        applicableWeight: '3 Kg'),
                    SizedBox(
                      height: screenHeight * 0.0338,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.079),
                      child: Text(
                        'Previous Orders (2)',
                        style: TextStyle(
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w700,
                            fontSize: screenHeight * 0.0225,
                            letterSpacing: 0.5,
                            color: const Color(0xffBABABA)),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.0225,
                    ),
                    const PreviousOrderCard(
                        trackingID: '7235362863',
                        pickupCity: 'New Delhi',
                        deliveryCity: 'Bangalore',
                        pickupPin: '110030',
                        deliveryPin: '560062',
                        orderValue: '₹5234',
                        applicableWeight: '3 Kg'),
                    SizedBox(
                      height: screenHeight * 0.0338,
                    ),
                    const PreviousOrderCard(
                        trackingID: '5462463435',
                        pickupCity: 'New Delhi',
                        deliveryCity: 'Bangalore',
                        pickupPin: '110030',
                        deliveryPin: '560062',
                        orderValue: '₹5234',
                        applicableWeight: '3 Kg'),
                  ],
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
