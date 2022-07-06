import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pick_my_parcel_customer/constants/constants.dart';
import 'package:pick_my_parcel_customer/widgets/bottom_navigation_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../homePageSlides/slide1.dart';
import '../homePageSlides/slide2.dart';
import '../homePageSlides/slide3.dart';
import '../widgets/primary_order_track_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();
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
        backgroundColor: primaryColor2,
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: primaryColor1,
          ),
          toolbarHeight: 0.0,
          elevation: 0.0,
          backgroundColor: primaryColor1,
        ),
        body: Stack(
          children: [
            ListView(
              physics: const ClampingScrollPhysics(),
            children: [
              Container(
                height: screenHeight * 0.475,
                decoration: BoxDecoration(
                  color: primaryColor1,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(screenHeight * 0.0338),
                    bottomRight: Radius.circular(screenHeight * 0.0338),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: screenHeight * 0.033,
                          left: screenWidth * 0.079,
                          right: screenWidth * 0.079),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Riya!',
                            style: TextStyle(
                              fontFamily: 'Montserrat SemiBold',
                              fontWeight: FontWeight.w800,
                              fontSize: screenHeight * 0.0225,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.0079,
                          ),
                          Text(
                            'Bangalore, India',
                            style: TextStyle(
                              fontFamily: 'PT Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: screenHeight * 0.018,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.0225,
                          ),
                          TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontFamily: 'PT Sans',
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: screenHeight * 0.0158,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.04,
                                  vertical: screenHeight * 0.015),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Color(0XFFE0E0E0)),
                                  borderRadius: BorderRadius.circular(8)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(color: Color(0XFFE0E0E0)),
                                  borderRadius: BorderRadius.circular(8)),
                              prefixIcon: Image.asset(
                                'images/tracking-icon.png',
                                width: 10,
                                height: 10,
                              ),
                              hintText: 'Enter 10-digit tracking number',
                              hintStyle: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: screenHeight * 0.0158,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.036,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.195,
                      child: PageView(
                        controller: _controller,
                        children: const [
                          Slide1(),
                          Slide2(),
                          Slide3(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.027,
                    ),
                    Center(
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: ExpandingDotsEffect(
                            activeDotColor: Colors.white,
                            dotColor: const Color(0xffCCCCCC),
                            dotHeight: screenHeight * 0.0112,
                            dotWidth: screenWidth * 0.0233,
                            expansionFactor: 2.5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.0474,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.079),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, '/sixth');
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: screenWidth * 0.042),
                        height: screenHeight * 0.056,
                        decoration: BoxDecoration(
                            color: primaryColor1,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Place an Order',
                              style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w700,
                                fontSize: screenHeight * 0.02,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: screenHeight * 0.02,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.0225,
                    ),
                    GestureDetector(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: screenWidth * 0.042),
                        height: screenHeight * 0.056,
                        decoration: BoxDecoration(
                            color: primaryColor1,
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Call for Booking/Enquiry',
                              style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w700,
                                fontSize: screenHeight * 0.02,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: screenHeight * 0.02,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.027,
              ),
              Stack(children: [
                Container(
                  height: screenHeight * 0.4,
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
                    height: screenHeight * 0.4,
                    decoration: BoxDecoration(
                        color: primaryColor2,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(screenHeight * 0.0338),
                          topRight: Radius.circular(screenHeight * 0.0338),
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
                  child: const PrimaryOrderTrackCard(
                      trackingID: '1735272983',
                      pickupCity: 'New Delhi',
                      deliveryCity: 'Bangalore',
                      pickupPin: '110030',
                      deliveryPin: '560062'),
                ),
              ])
            ],
          ),
            const Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: CustomBottomBar(),)
      ]
        ),
      ),
    );
  }
}
