import 'package:flutter/material.dart';
import 'package:portfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';
import 'cooler.dart';
import 'package:antdesign_icons/antdesign_icons.dart';
class FooterScreen extends StatelessWidget {
  const FooterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([
      VxDevice(
          mobile: VStack([
            "Got a Project?\nLet's Connect.".text.center.white.xl2.make(),
           10.heightBox,
            "faizan2017.fk@gmail.com"
                .text
                .color(Coolers.accentColor)
                .semiBold
                .make()
                .box
                .border(color: Coolers.accentColor)
                .p16
                .rounded
                .make(),
          ],
          crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack([
            "Got a project?\nLet's Connect.".text.center.white.xl2.make(),
            10.heightBox,
            "faizan2017.fk@gmail.com"
                .text
                .color(Coolers.accentColor)
                .semiBold
                .make()
                .box
                .border(color: Coolers.accentColor)
                .p16
                .rounded
                .make(),
          ],
          alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth*70).scale150().p16(),
      ),
      50.heightBox,
      CustomAppBar(),
      10.heightBox,
      "Thanks for Scrolling".richText.semiBold.white.withTextSpanChildren([
        " that's all folks".textSpan.gray500.make()
      ]).make(),
      10.heightBox,
      ["Made in India with".text.red500.make(),
      10.widthBox,
        Icon(AntIcons.heartFilled, color: Vx.red500, size: 14,)
      ].hStack(crossAlignment: CrossAxisAlignment.center)
    ],
    crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
