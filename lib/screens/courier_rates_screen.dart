import 'package:flutter/material.dart';
import 'package:pick_my_parcel_customer/widgets/courier_available.dart';
import 'package:pick_my_parcel_customer/widgets/order_details_summary.dart';
import 'package:pick_my_parcel_customer/widgets/dropdown_selector.dart';
import '../constants/constants.dart';
import '../util/content_cards.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';

class CourierRatesScreen extends StatefulWidget {
  final String packageWeight;
  final String packageValue;
  final String shipmentType;
  const CourierRatesScreen({Key? key,
    required this.packageWeight,
    required this.packageValue,
    required this.shipmentType}) : super(key: key);

  @override
  _CourierRatesScreenState createState() => _CourierRatesScreenState();
}

class _CourierRatesScreenState extends State<CourierRatesScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:
      CustomAppBar(
        screenHeight: screenHeight,
        screenWidth: screenWidth,
        title: 'Courier Rates',),
      backgroundColor: Colors.white,
      bottomNavigationBar:
          Container(color: primaryColor2, child: const CustomBottomBar()),
      body: SafeArea(
        child: ListView(
            physics: const ClampingScrollPhysics(),
            children: [
              Stack(
            children: [
              Column(
                children: [
                  // const HeaderBar(headerName: 'Courier Rates'),
                  SizedBox(
                    height: screenHeight * 0.138,
                  ),
                  Container(
                    height: screenHeight * 0.9,
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
                ],
              ),
              Positioned(
                top: screenHeight * 0.02,
                left: 0.0,
                right: 0.0,
                child: Column(
                  children: [
                    OrderDetailsSummaryBox(
                      applicableWeight: widget.packageWeight,
                      orderValue: widget.packageValue
                    ),
                    SizedBox(
                      height: screenHeight * 0.0236,
                    ),
                    ContentCards(
                        childWidget: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '3 Courier Found',
                              style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: screenHeight * 0.018,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Sort By:',
                                  style: TextStyle(
                                      fontFamily: 'PT Sans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: screenHeight * 0.018,
                                      color: const Color(0xffB3B3B3)),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.011,
                                ),
                                const DropDownSelector(listItems: [
                                  'Low Price',
                                  'Faster Delivery',
                                  'Popularity'
                                ], selectedItem: 'Low Price'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.0128,
                        ),
                        CourierAvailable(
                            courierName: 'DHL International',
                            imageAddress: 'images/DHL Icon.png',
                            deliveryDuration: '6 Days',
                            charges: '₹200',
                            packageValue: widget.packageValue,
                            shipmentType: widget.shipmentType,
                            packageWeight: widget.packageWeight,
                        ),
                        CourierAvailable(
                            courierName: 'FedEx',
                            imageAddress: 'images/FedEx Icon.png',
                            deliveryDuration: '6 Days',
                            charges: '₹200',
                          packageValue: widget.packageValue,
                          shipmentType: widget.shipmentType,
                          packageWeight: widget.packageWeight,
                        ),
                        CourierAvailable(
                            courierName: 'Amazon',
                            imageAddress: 'images/Amazon Icon.png',
                            deliveryDuration: '6 Days',
                            charges: '₹200',
                          packageValue: widget.packageValue,
                          shipmentType: widget.shipmentType,
                          packageWeight: widget.packageWeight,)
                      ],
                    ))
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

