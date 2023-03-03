import 'package:feedback/screens/feedback/review.dart';
import 'package:flutter/material.dart';

import 'config/theme/default_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Green Taxi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: DefaultColors.PrimaryColor,
        //  textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: RateScreen(),
    );
  }
}
