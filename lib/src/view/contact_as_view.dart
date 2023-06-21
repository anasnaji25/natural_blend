import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:natural_blend/src/constants/app_constants.dart';
import 'package:natural_blend/src/widgets/common_widgets/bottom_bar_desktop.dart';
import 'package:natural_blend/src/widgets/common_widgets/common_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  var nameCn = TextEditingController();
  var emailCn = TextEditingController();
  var contentCn = TextEditingController();

  setDefalt() {
    nameCn.clear();
    emailCn.clear();
    contentCn.clear();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60), child: CommonAppBar()),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.whatsapp, size: 28),
        backgroundColor: Colors.green.shade800,
        onPressed: () {
          String url = "https://wa.me/$whatsUppNumber/?text=Hello";
          launchUrl(Uri.parse(url));
        },
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              // Image(image: AssetImage("assets/images/slider_2 (2).jpg")),
              // Padding(
              //   padding: EdgeInsets.only(top: size.width > 1450 ? 200 : 150),
              //   child: Align(
              //     alignment: Alignment.center,
              //     child: const Text(
              //       "CONTACT US",
              //       style: TextStyle(
              //           fontSize: 40,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.white),
              //     ),
              //   ),
              // )
            ],
          ),
          //
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.white,
            child: Center(
              child: Container(
                height: 410,
                width: 1050,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5.0,
                          color: Color.fromARGB(255, 206, 206, 206)),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Message Us",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Container(
                            width: 130,
                            child: const Divider(
                              thickness: 1.5,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: 410,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.grey[200]),
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                controller: nameCn,
                                decoration: const InputDecoration(
                                  isCollapsed: true,
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: "Your name",
                                  //hintStyle:
                                ),
                              ),
                            ),
                          ),
                          //
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: 410,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.grey[200]),
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                controller: emailCn,
                                decoration: const InputDecoration(
                                  isCollapsed: true,
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: "Email address",
                                  //hintStyle:
                                ),
                              ),
                            ),
                          ),
                          //
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 100,
                            width: 410,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.grey[200]),
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              child: TextField(
                                // maxLines: 100,
                                controller: contentCn,
                                maxLines: 5,
                                decoration: const InputDecoration(
                                  isCollapsed: true,
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: "Write message",
                                  //hintStyle:
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 120),
                            child: InkWell(
                              onTap: () async {
                                if (nameCn.text.isNotEmpty &&
                                    emailCn.text.isNotEmpty &&
                                    contentCn.text.isNotEmpty) {
                                  final Uri params = Uri(
                                      scheme: 'mailto',
                                      path: email,
                                      queryParameters: {
                                        'subject': nameCn,
                                        'body': contentCn
                                      });
                                  setDefalt();
                                  await launchUrl(params);

                                  setDefalt();
                                } else {
                                  Fluttertoast.showToast(
                                      msg: "Fill all the fields",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0);

                                  // Scaffold.of(context).showSnackBar(SnackBar(
                                  //   content: Text("Sending Message"),
                                  // ));
                                  // Get.snackbar(
                                  //   "Fill all the fields",
                                  //   "",
                                  //   icon: const Icon(Icons.error_outline,
                                  //       color: Colors.white),
                                  //   snackPosition: SnackPosition.BOTTOM,
                                  //   backgroundColor: Colors.red,
                                  //   borderRadius: 20,
                                  //   maxWidth: 400,
                                  //   margin: const EdgeInsets.all(15),
                                  //   colorText: Colors.white,
                                  //   duration: const Duration(seconds: 3),
                                  //   isDismissible: true,
                                  //   dismissDirection:
                                  //       DismissDirection.horizontal,
                                  //   forwardAnimationCurve: Curves.easeOutBack,
                                  // );
                                }
                              },
                              child: Container(
                                height: 45,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    "SEND A MESSAGE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // const Text(
                            //   "CONTACT WITH US",
                            //   style: TextStyle(
                            //       fontSize: 17,
                            //       fontWeight: FontWeight.w500,
                            //       color: Colors.orange),
                            // ),
                            const Text(
                              "Get in touch now",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Container(
                              width: 200,
                              child: const Divider(
                                thickness: 1.5,
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  color:
                                      const Color.fromARGB(255, 248, 240, 228),
                                  child: const Center(
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  phoneNumber,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  color:
                                      const Color.fromARGB(255, 248, 240, 228),
                                  child: const Center(
                                    child: Icon(
                                      Icons.mail,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  "naturalblend01@gmail.com",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  color:
                                      const Color.fromARGB(255, 248, 240, 228),
                                  child: const Center(
                                    child: Icon(Icons.location_on,
                                        color: Colors.orange),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  address,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //
          const BottomWidget(),
        ],
      ),
    );
  }
}
