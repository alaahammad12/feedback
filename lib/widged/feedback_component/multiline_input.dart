import 'package:flutter/material.dart';

import '../../config/constants.dart';
import '../../config/theme/default_colors.dart';

class MultilineInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
                blurRadius: 15,
                offset: const Offset(0.0, 15.0),
                color: DefaultColors.kTextColor.withAlpha(20))
          ]),
      child: TextField(
        textInputAction: TextInputAction.newline,
        keyboardType: TextInputType.multiline,
        maxLines: 2,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Additional comment',
            hintStyle: TextStyle(
              color: DefaultColors.kTextLightColor,
            )),
      ),
    );
  }
}
