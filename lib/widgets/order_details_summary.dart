import 'package:flutter/material.dart';
import '../constants/constants.dart';

class OrderDetailsSummaryBox extends StatelessWidget {
  final String applicableWeight;
  final String orderValue;
  const OrderDetailsSummaryBox(
      {required this.applicableWeight, required this.orderValue});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
        children: [
      Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.079),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(-10.0, 10.0),
                  blurRadius: 30.0,
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                ),
                BoxShadow(
                  offset: Offset(10.0, -10.0),
                  blurRadius: 30.0,
                  color: Color.fromRGBO(0, 0, 0, 0.04),
                ),
              ]),
          child: Padding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.0225,
                bottom: screenHeight * 0.0225,
                right: screenWidth * 0.026,
                left: screenWidth * 0.056),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 11.0,
                      height: 11.0,
                      decoration: const BoxDecoration(
                        color: primaryColor1,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.046,
                      child: const VerticalDivider(
                        thickness: 3.0,
                        color: Color(0xffFFDCB1),
                        indent: 2.0,
                        endIndent: 2.0,
                      ),
                    ),
                    Container(
                      width: 11.0,
                      height: 11.0,
                      decoration: const BoxDecoration(
                        color: primaryColor1,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delhi',
                      style: TextStyle(
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: screenHeight * 0.0158,
                      ),
                    ),
                    Text(
                      '110030',
                      style: TextStyle(
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: screenHeight * 0.0135,
                        color: const Color(0xff929292),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.0214,
                    ),
                    Text(
                      'Bangalore',
                      style: TextStyle(
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: screenHeight * 0.0158,
                      ),
                    ),
                    Text(
                      '560062',
                      style: TextStyle(
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: screenHeight * 0.0135,
                        color: const Color(0xff929292),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.0854,
                ),
                Column(
                  children: [
                    Text(
                      'Order Value',
                      style: TextStyle(
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.0158,
                          color: const Color(0xffC7C7C7)),
                    ),
                    SizedBox(
                      height: screenHeight * 0.0112,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 70.0,
                      child: Text(
                        '₹' + orderValue,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Prompt SemiBold',
                          fontWeight: FontWeight.w600,
                          fontSize: screenHeight * 0.0158,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.0442,
                    ),
                  ],
                ),
                SizedBox(
                  height: 78.0,
                  child: VerticalDivider(
                    width: screenWidth * 0.0455,
                    thickness: 1.0,
                    color: const Color(0xffECECEC),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Applicable Weight',
                      style: TextStyle(
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.0158,
                          color: const Color(0xffC7C7C7)),
                    ),
                    SizedBox(
                      height: screenHeight * 0.0112,
                    ),
                    Text(
                      applicableWeight + ' Kg',
                      style: TextStyle(
                        fontFamily: 'Prompt SemiBold',
                        fontWeight: FontWeight.w600,
                        fontSize: screenHeight * 0.0158,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.0442,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
        child: SizedBox(
        width: screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40.0,
              width: 40.0,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.circular(screenHeight * 0.02357),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xffEEEEEE),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        offset: Offset(-0.0, -3.0))
                  ]),
              padding: const EdgeInsets.all(5),
              child: const Image(
                image: AssetImage('images/pin.png'),
              ),
            ),
            Container(
              height: 40.0,
              width: 40.0,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.circular(screenHeight * 0.02357),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xffEEEEEE),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        offset: Offset(-0.0, -3.0))
                  ]),
              padding: const EdgeInsets.all(5),
              child: const Image(
                image: AssetImage('images/rupee.png'),
              ),
            ),
            Container(
              height: 40.0,
              width: 40.0,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.circular(screenHeight * 0.02357),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xffEEEEEE),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        offset: Offset(-0.0, -3.0))
                  ]),
              padding: const EdgeInsets.all(5),
              child: const Image(
                image: AssetImage('images/archive.png'),
              ),
            ),
          ],
        ),
      ),
      )
    ]);
  }
}
