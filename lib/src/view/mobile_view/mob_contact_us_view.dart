import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:natural_blend/src/constants/app_constants.dart';
import 'package:natural_blend/src/view/mobile_view/drawer_view.dart';
import 'package:natural_blend/src/widgets/common_widgets/mobile_bottom_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class MobContactUsScreen extends StatefulWidget {
  const MobContactUsScreen({super.key});

  @override
  State<MobContactUsScreen> createState() => _MobContactUsScreenState();
}

class _MobContactUsScreenState extends State<MobContactUsScreen> {
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
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(
                height: 80,
                fit: BoxFit.fitHeight,
                image: AssetImage(logoImage)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.whatsapp, size: 28),
        backgroundColor: Colors.green.shade800,
        onPressed: () {
          String url = "https://wa.me/$whatsUppNumber/?text=Hello";
          launchUrl(Uri.parse(url));
        },
      ),
      drawer: Navdrawer(),
      body: ListView(
        children: [
          // Stack(
          //   children: const [
          //     Image(
          //         height: 150,
          //         fit: BoxFit.fill,
          //         image: AssetImage("assets/images/sdb028.jpg")),
          //     Padding(
          //       padding: EdgeInsets.only(top: 70),
          //       child: Center(
          //           child: Text(
          //         "CONTACT US",
          //         style: TextStyle(
          //             fontSize: 20,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white),
          //       )),
          //     )
          //   ],
          // ),
          Container(
            height: 800,
            color: Colors.white,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 630,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5.0,
                            color: Color.fromARGB(255, 206, 206, 206)),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Send Us a Message",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: Colors.grey[200]),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              controller: nameCn,
                              decoration: InputDecoration(
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
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: Colors.grey[200]),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              controller: emailCn,
                              decoration: InputDecoration(
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
                          height: 10,
                        ),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: Colors.grey[200]),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              // maxLines: 100,
                              controller: contentCn,
                              decoration: InputDecoration(
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
                          padding: const EdgeInsets.only(top: 20, bottom: 30),
                          child: InkWell(
                            onTap: () async {
                              if (nameCn.text.isNotEmpty &&
                                  emailCn.text.isNotEmpty &&
                                  contentCn.text.isNotEmpty) {
                              final Uri params = Uri(
                                  scheme: 'mailto',
                                  path: email,
                                  query:
                                      'subject=Business Enquirys&body=${contentCn.text}',
                                );
                                final url = params.toString();
                                final urlPath = Uri.parse(url);
                                launchUrl(urlPath);
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
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                child: Text(
                                  "SEND A MESSAGE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // const Text(
                        //   "CONTACT WITH US",
                        //   style: TextStyle(
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.w500,
                        //       color: Colors.orange),
                        // ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Get in touch now",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              color: const Color.fromARGB(255, 248, 240, 228),
                              child: const Center(
                                child: Icon(
                                  Icons.call,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              phoneNumber,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              color: const Color.fromARGB(255, 248, 240, 228),
                              child: const Center(
                                child: Icon(
                                  Icons.mail,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "naturalblend01@gmail.com",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              color: const Color.fromARGB(255, 248, 240, 228),
                              child: const Center(
                                child: Icon(Icons.location_on,
                                    color: Colors.orange),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              address,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const MobViewBottom(),
        ],
      ),
    );
  }
}
