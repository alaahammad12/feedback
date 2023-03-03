import 'package:feedback/widged/feedback_component/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_animtype.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../../config/constants.dart';
import '../../config/theme/default_colors.dart';

class MainButton extends StatefulWidget {
  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Submit',
          style: TextStyle(
              color: DefaultColors.kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        SizedBox(width: kDefaultPadding),
        RoundedButton(
            icon: Icon(Icons.arrow_forward),
            iconColor: Colors.white,
            bgColor: DefaultColors.kPrimaryColor,
            tap: () {
              QuickAlert.show(
                animType: QuickAlertAnimType.slideInRight,
                confirmBtnColor: DefaultColors.kPrimaryColor,
                context: context,
                type: QuickAlertType.success,
              );
            })
      ],
    );
  }
}
