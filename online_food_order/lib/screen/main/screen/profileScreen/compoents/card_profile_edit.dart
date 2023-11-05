import 'package:flutter/material.dart';

import '../../../../../ utils/custom_color.dart';
import '../../../../../ utils/custom_image.dart';
import '../../../../../customWidget/custom_text_widget.dart';

class customCardProfileEdit extends StatelessWidget {
  const customCardProfileEdit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Card(
        color: CustomColor().buttonColor,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(CustomImage().profileImage),
          ),
          title: CustomTextWidget(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            text: 'Arjun R',
            color: CustomColor().whiteColor,
          ),
          subtitle: CustomTextWidget(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            text: 'Flutter developer',
            color: CustomColor().whiteColor,
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit_note,
                size: 30,
                color: CustomColor().whiteColor,
              )),
        ),
      ),
    );
  }
}
