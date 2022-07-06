import 'package:flutter/material.dart';
import 'package:pick_my_parcel_customer/constants/constants.dart';
import 'package:pick_my_parcel_customer/screens/order_confirmed_screen.dart';
import '../util/primary_button.dart';

String selectedPayment = '';
void showPaymentDialog({
  required BuildContext context,
  required final String imageAddress,
  required final String courierName,
  required final String deliveryDuration,
  required final String charges,
  required final String packageWeight,
  required final String packageValue,
  required final String shipmentType,
}) => showDialog(
  context: context,
  builder: (BuildContext context) =>
      StatefulBuilder(
        builder: (context, setState) => Dialog(
          child: SizedBox(
            width: 360.0,
            height: 470.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(onTap: () {
                    Navigator.pop(context);
                  }, child: const Icon(Icons.close_rounded)),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    width: 300.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 30.0,
                            spreadRadius: 0.0,
                            color: Color.fromRGBO(0, 0, 0, 0.05),
                            offset: Offset(
                                -10.0,
                                10.0
                            ),
                          ),
                          BoxShadow(
                            blurRadius: 30.0,
                            spreadRadius: 0.0,
                            color: Color.fromRGBO(0, 0, 0, 0.04),
                            offset: Offset(
                                10.0,
                                -10.0
                            ),
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio(
                              activeColor: primaryColor1,
                              splashRadius: 0.0,
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            value: 'COD',
                            groupValue: selectedPayment,
                            onChanged: (value) {
                              setState(() {
                                selectedPayment = value.toString();
                              });
                            },
                          ),
                            const Text('COD',
                              style: TextStyle(
                                  fontFamily: 'PT Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.0
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0, right: 30.0),
                          child: Wrap(
                              children: const [Text('Pay in cash when you parcel is picked.',
                                style: TextStyle(
                                    fontFamily: 'PT Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0
                                ),),
                              ]
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: 300.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 30.0,
                            spreadRadius: 0.0,
                            color: Color.fromRGBO(0, 0, 0, 0.05),
                            offset: Offset(
                                -10.0,
                                10.0
                            ),
                          ),
                          BoxShadow(
                            blurRadius: 30.0,
                            spreadRadius: 0.0,
                            color: Color.fromRGBO(0, 0, 0, 0.04),
                            offset: Offset(
                                10.0,
                                -10.0
                            ),
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio(
                              splashRadius: 0.0,
                              activeColor: primaryColor1,
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              value: 'Online Payment',
                              groupValue: selectedPayment,
                              onChanged: (value) {
                                setState(() {
                                  selectedPayment = value.toString();
                                });
                              },
                            ),
                            const Text('Online Payment',
                              style: TextStyle(
                                  fontFamily: 'PT Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.0
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0, right: 30.0),
                          child: Wrap(
                              children: const [Text('Pay via the payment gateway.',
                                style: TextStyle(
                                    fontFamily: 'PT Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.0
                                ),),
                              ]
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  PrimaryButton(
                      onPress: () {
                        if(selectedPayment != '') {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => OrderConfirmedScreen(
                              deliveryDuration: deliveryDuration,
                              imageAddress: imageAddress,
                              packageValue: packageValue,
                              shipmentType: shipmentType,
                              charges: charges,
                              courierName: courierName,
                              packageWeight: packageWeight,
                            ),
                          ),
                          );
                        }
                      },
                      label: 'Proceed')
                ],
              ),
            ),
          ),
        ),
      ),);