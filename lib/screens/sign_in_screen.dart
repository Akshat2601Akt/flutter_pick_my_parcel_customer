import 'package:flutter/material.dart';
import 'package:pick_my_parcel_customer/constants/constants.dart';
import '../util/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.034,
                left: screenWidth * 0.079,
                right: screenWidth * 0.079),
            child: SingleChildScrollView(
              child: Stack(
                  children: [
                Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.022,
                    ),
                    SizedBox(
                      height: screenHeight * 0.32,
                      width: screenWidth * 0.80,
                      child: Image.asset('images/login.png'),
                    ),
                    SizedBox(
                      height: screenHeight * 0.045,
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(
                          fontFamily: 'Montserrat SemiBold',
                          fontSize: screenHeight * 0.0215,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: screenHeight * 0.045,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.126),
                      child: Wrap(
                        children: [
                          Text(
                            'Enter you mobile number so that we know who it is.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Archivo',
                              fontSize: screenHeight * 0.019,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(99, 99, 99, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.039,
                    ),
                    SizedBox(
                      height: screenHeight * 0.056,
                      child: TextField(
                        keyboardType: TextInputType.number,
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
                          hintText: 'Mobile No.',
                          hintStyle: TextStyle(
                            fontFamily: 'Archivo',
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(166, 157, 157, 1),
                            fontSize: screenHeight * 0.015,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    PrimaryButton(
                      onPress: () {
                        Navigator.pushNamed(context, '/third');
                      },
                      label: 'Send OTP',
                    ),
                  ],
                ),
                Positioned(
                  top: 0.0,
                  left: 0.0,
                  child: GestureDetector(
                    child: Container(
                      height: screenHeight * 0.04,
                      width: screenWidth * 0.081,
                      decoration: BoxDecoration(
                          color: primaryColor1,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                )
              ]),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: screenHeight * 0.067),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'New to Pick My Parcel? ',
                style: TextStyle(
                    fontFamily: 'Archivo',
                    fontWeight: FontWeight.w400,
                    fontSize: screenHeight * 0.017,
                    color: const Color.fromRGBO(137, 132, 132, 1)),
              ),
              GestureDetector(
                child: Text(
                  'Register',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Archivo',
                      fontWeight: FontWeight.w700,
                      fontSize: screenHeight * 0.017,
                      color: primaryColor1),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/fourth');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
