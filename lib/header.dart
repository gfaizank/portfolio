import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/cooler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:antdesign_icons/antdesign_icons.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameWidget = "Faizan\nKhan"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
          child: VStack([
        ZStack([
          PictureWidget(),
          Row(
            children: [
              VStack([
                if(context.isMobile) 50.heightBox else 10.heightBox,
                CustomAppBar().shimmer(
                  primaryColor: Coolers.accentColor,
                ),
                30.heightBox,
                nameWidget,
                20.heightBox,
                VxBox()
                    .color(Coolers.accentColor)
                    .size(60, 10)
                    .make()
                    .shimmer(primaryColor: Coolers.accentColor),
                30.heightBox,
                SocialAccounts(),
              ]).pSymmetric(
                h: context.percentWidth * 10,
                v: 32,
              ),
              Expanded(
                  child:VxResponsive(
                    fallback: const Offstage(),
                    medium: IntroductionWidget().pOnly(left: 120).h(context.percentHeight*60),
                    large: IntroductionWidget().pOnly(left: 120).h(context.percentHeight*60),
                  ) )
            ],
          ).w(context.screenWidth)
        ])
      ])).size(context.screenWidth, context.percentHeight*60).color(Coolers.secondaryColor).make(),
    );
  }
}
class IntroductionWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return VStack([
      [" - Introdcution".text.gray500.widest.sm.make(),
        10.heightBox,
        "A self motivated and goal oriented Software developer with almost a year of professional IT experience. \nCarries hands on experience on Android studio and am well versed with Java, Dart,  flutter framework, Firebase, Sql and AWS services"
            .text
            .white
            .xl3
            .maxLines(9)
            .make().w(context.isMobile?context.screenWidth:context.percentWidth*40),
        20.heightBox,
      ].vStack(),
      ElevatedButton(onPressed: (){
        launch("https://www.linkedin.com/in/faizan-khan-8b622014b");
      }, child: "Visit my LinkedIn profile".text.make(),
      ).h(50)

    ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}



class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.rotationY(pi),
      alignment: Alignment.center,
      child: Image.asset(
        "assets/pic.png.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntIcons.codepenSquareFilled,
      size: 50,
      color: Coolers.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(AntIcons.twitterOutlined, color: Colors.white).mdClick(() {
        launch(
            "https://twitter.com/Mr_faizan1818?t=MEMVpYJhklf94u_9_sU__g&s=09");
      }).make(),
      20.widthBox,
      Icon(AntIcons.instagramOutlined, color: Colors.white).mdClick(() {
        launch("https://instagram.com/___mr__faizan?igshid=ZDdkNTZiNTM=");
      }).make(),
      20.widthBox,
      Icon(AntIcons.linkedinFilled, color: Colors.white).mdClick(() {
        launch("https://www.linkedin.com/in/faizan-khan-8b622014b");
      }).make(),
      20.widthBox,
      Icon(AntIcons.githubOutlined, color: Colors.white).mdClick(() {
        launch("https://github.com/gfaizank");
      }).make(),
    ].hStack();
  }
}
