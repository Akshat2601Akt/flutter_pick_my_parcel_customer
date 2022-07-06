import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/constants.dart';

class OpenBottomSheet extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;
  const OpenBottomSheet({Key? key, required this.screenHeight, required this.screenWidth}) : super(key: key);

  @override
  State<OpenBottomSheet> createState() => _OpenBottomSheetState();
}

class _OpenBottomSheetState extends State<OpenBottomSheet> {
  @override
  Widget build(BuildContext context) {
    const userName = 'Riya Shah';
    const phoneNumber = '9265163734';
    const urlImage =
        'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60';
    return Container(
      height: widget.screenHeight * 0.734,
      width: widget.screenWidth,
      decoration: BoxDecoration(
          color: primaryColor1,
          borderRadius: BorderRadius.vertical(top: Radius.circular(widget.screenHeight * 0.0338))),
      child: Stack(
        children: [
              Padding(
                padding: EdgeInsets.only(top: widget.screenHeight * 0.0835),
                child: Column(
                  children: [
                    Container(
                      height: widget.screenHeight * 0.191,
                      width: widget.screenWidth * 0.84,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: primaryColor4
                      ),
                    ),
                    SizedBox(
                      height: widget.screenHeight * 0.0338,
                    ),
                    buildMenuItem(
                      text: 'Track Courier',
                      imageAddress: 'images/location.png',
                      onClicked: () => selectedItem(context, 0),
                      screenWidth: widget.screenWidth,
                      screenHeight: widget.screenHeight
                    ),
                    buildMenuItem(
                      text: 'Contact Us',
                      imageAddress: 'images/complain.png',
                      onClicked: () async => { launch('tel:$contactUsNumber')},
                        screenWidth: widget.screenWidth,
                        screenHeight: widget.screenHeight
                    ),
                    buildMenuItem(
                      text: 'Terms & Conditions',
                      imageAddress: 'images/terms.png',
                      onClicked: () => selectedItem(context, 2),
                        screenWidth: widget.screenWidth,
                        screenHeight: widget.screenHeight
                    ),
                    buildMenuItem(
                      text: 'Rating & Feedback',
                      imageAddress: 'images/rating 1.png',
                      onClicked: () => selectedItem(context, 3),
                        screenWidth: widget.screenWidth,
                        screenHeight: widget.screenHeight
                    ),
                    buildMenuItem(
                      text: 'Logout',
                      imageAddress: 'images/logout.png',
                      onClicked: () => selectedItem(context, 4),
                        screenWidth: widget.screenWidth,
                        screenHeight: widget.screenHeight
                    ),
                  ],
                ),
              ),
          Positioned(
            top: widget.screenHeight * 0.058,
              left: widget.screenWidth * 0.375,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/fifteenth');
                },
                child: Column(
            children: [
                Container(
                  height: widget.screenHeight * 0.112,
                  width: widget.screenWidth * 0.23,
                  padding: const EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      image: const NetworkImage(
                        urlImage,
                      ),
                      height: widget.screenHeight * 0.101,
                      width: widget.screenWidth * 0.21,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    userName,
                    style: TextStyle(
                      fontFamily: 'Antonio',
                      fontWeight: FontWeight.w700,
                      fontSize: widget.screenHeight * 0.0225
                    ),
                  ),
                ),
                Text(
                    phoneNumber,
                  style: TextStyle(
                      fontFamily: 'Antonio',
                      fontWeight: FontWeight.w700,
                      fontSize: widget.screenHeight * 0.0225
                  ),
                )
            ],
          ),
              ),
          )
        ]
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required String imageAddress,
  required double screenHeight,
  required double screenWidth,
  VoidCallback? onClicked,
}) {
  return GestureDetector(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
            children: [
              SizedBox(
                width: screenWidth * 0.079,
              ),
         Image.asset(
             imageAddress),
          SizedBox(
            width: screenWidth * 0.046,
          ),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Archivo',
              fontWeight: FontWeight.w500,
              fontSize: screenHeight * 0.02,
              color: Colors.white
            ),
          ),
        ]),
        Divider(
          color: primaryColor4,
         thickness: 1.0,
         indent: screenWidth * 0.079,
         endIndent: screenWidth * 0.079,
          height: screenHeight * 0.028,
        ),
        SizedBox(
          height: screenHeight * 0.017,
        )
      ],
    ),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.pushNamed(context, '/eleventh');
      break;
    case 2:
      Navigator.pushNamed(context, '/fourteenth');
      break;
    case 3:
      Navigator.pushNamed(context, '/sixteenth');
      break;
    case 4:
      Navigator.pushNamed(context, '/second');
      break;
  }
}
