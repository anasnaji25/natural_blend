
import 'package:flutter/material.dart';
import 'package:natural_blend/src/constants/app_constants.dart';
import 'package:natural_blend/src/view/mobile_view/mob_contact_us_view.dart';
import 'package:url_launcher/url_launcher.dart';

class MobViewBottom extends StatefulWidget {
  const MobViewBottom({super.key});

  @override
  State<MobViewBottom> createState() => _MobViewBottomState();
}

class _MobViewBottomState extends State<MobViewBottom> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 820,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage(logoImage),
                  height: 100,
                ),
                const Text(
                  """E-Sankalp is a attempt to bridge the\ngap between the Divinity and self, using\nthe latest cutting edge technology.""",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      height: 2,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        launchUrl(Uri.parse(
                            "https://www.instagram.com/natural_blend/"));
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        // decoration: BoxDecoration(
                        //     color: const Color.fromARGB(255, 179, 178, 178),
                        //     borderRadius: BorderRadius.circular(18)),
                        child: const Center(
                          child: Image(
                            height: 30,
                            width: 30,
                            image: AssetImage("assets/images/instagram.png"),
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
                            "https://www.facebook.com/natural_blend"));
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        // decoration: BoxDecoration(
                        //     color: const Color.fromARGB(255, 179, 178, 178),
                        //     borderRadius: BorderRadius.circular(18)),
                        child: const Center(
                          child: Image(
                            height: 30,
                            width: 30,
                            image: AssetImage("assets/images/facebook.png"),
                            // color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Quick Links",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                   
                  },
                  child: const Text(
                    "Home",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                // const SizedBox(
                //   height: 15,
                // ),
                // InkWell(
                //   onTap: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const MobAboutUsScreen()));
                //   },
                //   child: const Text(
                //     "About Us",
                //     style: TextStyle(fontSize: 16, color: Colors.grey),
                //   ),
                // ),
              

                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                   
                  },
                  child: const Text(
                    "Our Products",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MobContactUsScreen()));
                  },
                  child: const Text(
                    "Contact us",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                   
                  },
                  child: const Text(
                    "Terms and Conditions",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                   
                  },
                  child: const Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Find",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  address,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Contact",
                  style: TextStyle(
                      fontSize: 22,
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
                    Text(
                      phoneNumber,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Row(
                //   children: const [
                //     Icon(
                //       Icons.lock_clock,
                //       color: Colors.orange,
                //     ),
                //     Text(
                //       "Mon - fri: 10AM - 7PM",
                //       style: TextStyle(fontSize: 16, color: Colors.grey),
                //     ),
                //   ],
                // ),
                
                Row(
                  children: const [
                    Icon(
                      Icons.mail,
                      color: Colors.orange,
                    ),
                    Text(
                      email,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
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
            height: 15,
          ),
          const Center(
              child: Text(
            "© All Copyright 2023 by Natural Blends pvt ltd",
            style: TextStyle(fontSize: 13, color: Colors.grey),
          )),
        ],
      ),
    );
  }
}
