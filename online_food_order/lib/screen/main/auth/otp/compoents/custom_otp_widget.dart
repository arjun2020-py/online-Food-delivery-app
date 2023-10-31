import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_food_order/%20utils/custom_color.dart';

class CustomOtpWidget extends StatelessWidget {
  const CustomOtpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                } 
                // else {
                //   FocusScope.of(context).previousFocus();
                // }
              },
              decoration: InputDecoration(
                
                  filled: true, fillColor: CustomColor().whiteColor),
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 16), // Adjust fontSize here
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
                // else {
                //   FocusScope.of(context).previousFocus();
                // }
              },
              decoration: InputDecoration(
                  filled: true, fillColor: CustomColor().whiteColor),
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 16), // Adjust fontSize here
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
                // else {
                //   FocusScope.of(context).previousFocus();
                // }
              },
              decoration: InputDecoration(
                  filled: true, fillColor: CustomColor().whiteColor),
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 16), // Adjust fontSize here
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
                // else {
                //   FocusScope.of(context).previousFocus();
                // }
              },
              decoration: InputDecoration(
                  filled: true, fillColor: CustomColor().whiteColor),
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 16), // Adjust fontSize here
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
