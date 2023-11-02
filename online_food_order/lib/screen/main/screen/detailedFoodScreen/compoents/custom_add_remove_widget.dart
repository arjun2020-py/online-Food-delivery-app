import 'package:flutter/material.dart';

import '../../../../../ utils/custom_color.dart';

class addRemoveItemWidget extends StatelessWidget {
  const addRemoveItemWidget({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: CustomColor().buttonColor, width: 3)),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: CustomColor().buttonColor,
            )),
      ),
    );
  }
}
