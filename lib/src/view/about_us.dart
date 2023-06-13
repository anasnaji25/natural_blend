
import 'package:flutter/material.dart';
import 'package:natural_blend/src/constants/app_constants.dart';
import 'package:natural_blend/src/widgets/common_widgets/bottom_bar_desktop.dart';
import 'package:natural_blend/src/widgets/common_widgets/common_app_bar.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60), child: CommonAppBar()),
      body: ListView(
        children: [
          Stack(
            children: const [
              
              Padding(
                padding: EdgeInsets.only(top: 150),
                child: Center(
                    child: Text(
                  "ABOUT US",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              )
            ],
          ),
          Container(
            height: 900,
            width: size.width,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 70, left: 10, right: 10, bottom: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           Text(aboutUsContent)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          const BottomWidget(),
        ],
      ),
    );
  }
}
