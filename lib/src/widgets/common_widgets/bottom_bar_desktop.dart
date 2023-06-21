import 'package:flutter/material.dart';
import 'package:natural_blend/src/constants/app_constants.dart';
import 'package:natural_blend/src/constants/app_fonts.dart';
import 'package:natural_blend/src/view/contact_as_view.dart';
import 'package:natural_blend/src/view/home_page.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key});

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const Image(
                      //   image: AssetImage(
                      //     "assets/images/logo.png",
                      //   ),
                      //   height: 100,
                      // ),
                      Container(height: 100, child: Image.asset(logoImage)),
                      const Text(
                        """We are dedicated to sourcing and\ndelivering the finest quality\nspices from around the world""",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            height: 2,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              launchUrl(Uri.parse(
                                  "https://instagram.com/naturalblend1.0?igshid=MzNlNGNkZWQ4Mg=="));
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              child: const Center(
                                child: Image(
                                  height: 40,
                                  width: 40,
                                  image:
                                      AssetImage("assets/images/instagram.png"),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              launchUrl(Uri.parse(
                                  "https://www.facebook.com/naturalblend1.0"));
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              child: const Center(
                                child: Image(
                                  height: 40,
                                  width: 40,
                                  image:
                                      AssetImage("assets/images/facebook.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Quick Links",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePageView()));
                        },
                        child: const Text(
                          "Home",
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        )),
                    // const SizedBox(
                    //   height: 15,
                    // ),
                    // InkWell(
                    //   onTap: () {},
                    //   child: const Text(
                    //     "Our Products",
                    //     style: TextStyle(fontSize: 13, color: Colors.grey),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ContactUsScreen()));
                      },
                      child: const Text(
                        "Contact us",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Terms and Conditions",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Privacy Policy",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      address,
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Contact",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.call,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              phoneNumber,
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.mail,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "naturalblend01@gmail.com",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 0.2,
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            "© All Copyright 2023 by Natural Blends pvt ltd",
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
