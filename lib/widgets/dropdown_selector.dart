import 'package:flutter/material.dart';
import 'package:pick_my_parcel_customer/constants/constants.dart';

class DropDownSelector extends StatefulWidget {
  final List<String> listItems;
  final String? selectedItem;
  const DropDownSelector(
      {required this.listItems, required this.selectedItem, Key? key})
      : super(key: key);

  @override
  _DropDownSelectorState createState() => _DropDownSelectorState();
}

class _DropDownSelectorState extends State<DropDownSelector> {
  String selectedItems = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedItems = widget.selectedItem.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 25.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color(0xffE0E0E0), width: 1.0),
        color: Colors.white,
      ),
      child: DropdownButton<String>(
          value: selectedItems,
          isExpanded: true,
          dropdownColor: Colors.white,
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 15.0,
            color: primaryColor1,
          ),
          underline: const SizedBox(),
          items: widget.listItems.map<DropdownMenuItem<String>>(
            (String selectedItem) {
              return DropdownMenuItem<String>(
                value: selectedItem,
                child: Text(
                  selectedItem,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontFamily: 'PT Sans',
                      fontSize: 14.0,
                      color: primaryColor1),
                ),
              );
            },
          ).toList(),
          onChanged: (String? newValue) => setState(() {
                selectedItems = newValue!;
              })),
    );
  }
}
