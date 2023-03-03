import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import '../../config/constants.dart';
import '../../config/theme/default_colors.dart';
import '../../widged/feedback_component/app_header.dart';
import '../../widged/feedback_component/custom_app_bar.dart';
import '../../widged/feedback_component/main_button.dart';
import '../../widged/feedback_component/multiline_input.dart';
import '../../widged/feedback_component/points.dart';

class RateScreen extends StatefulWidget {
  @override
  State<RateScreen> createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppHeader(),
            Positioned(
                top: -380,
                left: -187,
                child: Opacity(
                    opacity: 0.9,
                    child: Image.asset('lib/config/images/bg.png'))),
            SafeArea(
                child: Padding(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  CustomAppBar(),
                  SizedBox(height: kDefaultPadding * 4),
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/config/images/alaa.jpeg'),
                    radius: 70,
                  ),
                  SizedBox(height: kDefaultPadding),
                  Divider(
                    color: DefaultColors.TextLightColor,
                  ),
                  SizedBox(height: kDefaultPadding),
                  PointStats(),
                  SizedBox(height: kDefaultPadding),
                  Divider(
                    color: DefaultColors.TextLightColor,
                  ),
                  SizedBox(height: kDefaultPadding),
                  Text(
                    'Alaa,',
                    style: TextStyle(
                      color: DefaultColors.TextLightColor,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'How Would You Rate Our App?',
                    style: TextStyle(
                      color: DefaultColors.TextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                  SmoothStarRating(
                    spacing: kDefaultPadding,
                    allowHalfRating: false,
                    onRatingChanged: (v) {
                      setState(() {});
                    },
                    starCount: 5,
                    rating: 2.5,
                    size: 45.0,
                  ),
                  SizedBox(height: kDefaultPadding),
                  MultilineInput(),
                  SizedBox(height: kDefaultPadding),
                  MainButton()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
