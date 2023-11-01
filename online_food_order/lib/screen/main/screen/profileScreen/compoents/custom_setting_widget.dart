import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../customWidget/custom_text_widget.dart';
import '../../../../../interlization/interlization.dart';

class customSettingWidget extends StatelessWidget {
  const customSettingWidget(
      {super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ListTile(
        leading: Icon(icon),
        title: CustomTextWidget(
            fontSize: 15, fontWeight: FontWeight.w400, text: text),
        trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            )),
      ),
    );
  }
}
