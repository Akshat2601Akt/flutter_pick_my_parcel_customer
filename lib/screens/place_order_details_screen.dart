import 'package:flutter/material.dart';
import 'package:pick_my_parcel_customer/screens/courier_rates_screen.dart';
import 'package:pick_my_parcel_customer/util/content_cards.dart';
import 'package:pick_my_parcel_customer/util/input_box.dart';
import 'package:pick_my_parcel_customer/util/primary_button.dart';
import '../constants/constants.dart';
import '../util/input_box_2.dart';
import '../util/input_box_3.dart';
import '../util/input_box_4.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation_bar.dart';

enum Domains { domestic, international }

class PlaceOrderDetails extends StatefulWidget {
  const PlaceOrderDetails({Key? key}) : super(key: key);

  @override
  _PlaceOrderDetailsState createState() => _PlaceOrderDetailsState();
}

class _PlaceOrderDetailsState extends State<PlaceOrderDetails> {
  var weightController = TextEditingController();
  var valueController = TextEditingController();
  Domains selectedDomain = Domains.domestic;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar:
        CustomAppBar(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          title: 'Order Details',),
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
                    SizedBox(
                      height: screenHeight * 0.027,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedDomain = Domains.domestic;
                            });
                          },
                          child: Container(
                            height: screenHeight * 0.0564,
                            width: screenWidth * 0.233,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(screenHeight * 0.112),
                              color: selectedDomain == Domains.domestic
                                  ? primaryColor1
                                  : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                'Domestic',
                                style: TextStyle(
                                  fontFamily: 'PT Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenHeight * 0.0158,
                                  color: selectedDomain == Domains.domestic
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedDomain = Domains.international;
                            });
                          },
                          child: Container(
                            height: screenHeight * 0.0564,
                            width: screenWidth * 0.243,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(screenHeight * 0.112),
                              color: selectedDomain == Domains.international
                                  ? primaryColor1
                                  : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                'International',
                                style: TextStyle(
                                  fontFamily: 'PT Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenHeight * 0.0158,
                                  color: selectedDomain == Domains.international
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.059,
                    ),
                    Container(
                      height: screenHeight * 0.75,
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
                  top: screenHeight * 0.115,
                  left: 0.0,
                  right: 0.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ContentCards(
                        childWidget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Enter Pincode',
                              style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w700,
                                fontSize: screenHeight * 0.02,
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.0338,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InputBox(
                                    boxWidth: screenWidth * 0.341,
                                    hintText: 'Pickup Pincode'),
                                SizedBox(
                                  height: screenWidth * 0.0338,
                                ),
                                InputBox(
                                    boxWidth: screenWidth * 0.341,
                                    hintText: 'Delivery Pincode'),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0225,
                      ),
                      ContentCards(
                        childWidget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Package Details',
                              style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w700,
                                fontSize: screenHeight * 0.02,
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.0338,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InputBox(
                                    boxWidth: screenWidth * 0.341,
                                    hintText: 'Content'),
                                SizedBox(
                                  height: screenWidth * 0.07,
                                ),
                                InputBox3(
                                    boxWidth: screenWidth * 0.341,
                                    hintText: 'Weight',
                                suffixText: 'Kg',
                                  weightController: weightController,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.0338,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InputBox2(
                                  boxWidth: screenWidth * 0.21,
                                  labelText: 'Length',
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.016, vertical: screenHeight * 0.0169),
                                  child: Text(
                                    'x',
                                    style: TextStyle(
                                      fontFamily: 'Archivo',
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenHeight * 0.0225
                                    ),
                                  ),
                                ),
                                InputBox2(
                                  boxWidth: screenWidth * 0.21,
                                  labelText: 'Breadth',
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.016, vertical: screenHeight * 0.0169),
                                  child: Text(
                                    'x',
                                    style: TextStyle(
                                        fontFamily: 'Archivo',
                                        fontWeight: FontWeight.w700,
                                        fontSize: screenHeight * 0.0225
                                    ),
                                  ),
                                ),
                                InputBox2(
                                  boxWidth: screenWidth * 0.21,
                                  labelText: 'Height',
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.0338,
                      ),
                      ContentCards(
                        childWidget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Package Value',
                              style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w700,
                                fontSize: screenHeight * 0.02,
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.0338,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InputBox4(
                                    boxWidth: screenWidth * 0.75,
                                    hintText: 'Enter the value of the package',
                                  valueController: valueController,),
                                SizedBox(
                                  height: screenWidth * 0.0338,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenWidth * 0.0638,
                      ),
                      PrimaryButton(
                          onPress: () {
                            if(valueController.text != '' && weightController.text != ''){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => CourierRatesScreen(
                                  packageValue: valueController.text,
                                  packageWeight: weightController.text,
                                  shipmentType: selectedDomain == Domains.domestic
                                  ? 'Domestic'
                                  : 'International'
                                ),
                              ),
                              );
                            }
                          },
                          label: 'Check Courier Rates')
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
