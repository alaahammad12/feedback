import 'package:flutter/material.dart';

import '../../config/theme/default_colors.dart';

class PointStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PointInfo(
          title: 'collect:',
          value: '15 point',
        ),
        PointInfo(
          title: 'Price:',
          value: '\$9.99',
        ),
      ],
    );
  }
}

class PointInfo extends StatelessWidget {
  const PointInfo({
    required this.title,
    required this.value,
  });

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: title + '\n',
          style: TextStyle(color: DefaultColors.kTextLightColor, fontSize: 14)),
      TextSpan(
          text: value,
          style: TextStyle(
              color: DefaultColors.kTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 18)),
    ]));
  }
}
