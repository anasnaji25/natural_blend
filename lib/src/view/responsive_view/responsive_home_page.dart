import 'package:flutter/material.dart';
import 'package:natural_blend/src/view/home_page.dart';
import 'package:natural_blend/src/view/mobile_view/mob_home_page.dart';
import 'package:natural_blend/src/view/responsive_view/responsive_layout.dart';

class ResponsiveHomeView extends StatelessWidget {
  const ResponsiveHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktopbody: HomePageView(),
      mobilebody: MobileHomeView(),
    );
  }
}
