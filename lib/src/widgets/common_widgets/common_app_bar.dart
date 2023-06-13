import 'package:flutter/material.dart';
import 'package:natural_blend/src/constants/app_constants.dart';
import 'package:natural_blend/src/view/about_us.dart';
import 'package:natural_blend/src/view/contact_as_view.dart';
import 'package:natural_blend/src/view/home_page.dart';

import '../../constants/app_fonts.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Container(height: 130, child: Image.asset(logoImage,fit: BoxFit.fill,)),
      actions: [
        Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomePageView()));
              },
              child: Text(
                "Home",
                style: primaryFont.copyWith(
                    color: const Color.fromARGB(255, 65, 65, 65), fontSize: 16),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ContactUsScreen()));
              },
              child: Text(
                "Contact Us",
                style: primaryFont.copyWith(
                    color: const Color.fromARGB(255, 65, 65, 65), fontSize: 16),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ],
    );
  }
}
