import 'package:flutter/material.dart';
import 'package:portfolio/cooler.dart';
import 'package:velocity_x/velocity_x.dart';
import 'header.dart';
import 'middle.dart';
import 'footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack([
        HeaderScreen(),
        if(context.isMobile) IntroductionWidget().p16(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}


