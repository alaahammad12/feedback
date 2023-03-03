import 'package:feedback/config/constants.dart';
import 'package:feedback/widged/feedback_component/rounded_button.dart';
import 'package:flutter/material.dart';
import '../../config/theme/default_colors.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedButton(
          icon: Icon(Icons.arrow_back),
          iconColor: DefaultColors.kPrimaryColor,
          bgColor: Colors.white,
          tap: () {},
        ),
        SizedBox(width: kDefaultPadding),
        Text(
          'Feedback!',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        )
      ],
    );
  }
}
