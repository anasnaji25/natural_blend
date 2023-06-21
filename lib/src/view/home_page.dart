import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:natural_blend/src/constants/app_constants.dart';
import 'package:natural_blend/src/constants/app_fonts.dart';
import 'package:natural_blend/src/widgets/common_widgets/bottom_bar_desktop.dart';
import 'package:natural_blend/src/widgets/common_widgets/common_app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          child: CommonAppBar(), preferredSize: Size.fromHeight(60)),
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
          Container(
            width: size.width,
            height: 600,
            child: CarouselSlider(
              items: [
                {
                  "image": "assets/images/image1.jpeg",
                  "name": "Discover the Spice\nWonderland",
                  "desc": "With our exceptional collection of spices",
                  "image_large": "assets/images/sliders/Slider.jpg",
                  "ad": "1",
                },
                {
                  "image": "assets/images/image (1).jpeg",
                  "name": "Savor the Essence of\nAuthentic Flavors",
                  "desc": "With our exceptional collection of spices",
                  "image_large": "assets/images/sliders/Slider2.jpg",
                  "ad": "1",
                },
                {
                  "image": "assets/images/image (2).jpeg",
                  "name": "Indulge in Culinary\nAdventures",
                  "desc": "With our exceptional collection of spices",
                  "image_large": "assets/images/sliders/Slider2.jpg",
                  "ad": "1",
                },

                // {
                //   "image": "assets/images/sliders/Slider3.jpg",
                //   "name": "TEMPLES OF\nSALVATION",
                //   "image_large": "assets/images/sliders/Slider3.jpg",
                //   "ad": "1",
                // },
                // {
                //   "image": "assets/images/sliders/Slider4.jpg",
                //   "image_large": "assets/images/sliders/Slider4.jpg",
                //   "name": "TEMPLES OF THE\nWORLD",
                //   "ad": "1",
                // },
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        Container(
                            width: size.width,
                            height: 600,
                            child: Image.asset(
                              i["image"]!,
                              fit: BoxFit.fill,
                            )),
                        Container(
                          width: size.width,
                          height: 600,
                          color: Colors.black38.withOpacity(0.3),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(7)),
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15),
                                      child: Text(
                                        "Natural blend",
                                        style: primaryFont.copyWith(
                                            color: Colors.red),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                i["name"]!,
                                textAlign: TextAlign.center,
                                style: primaryFont.copyWith(
                                    fontSize: 70,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                i["desc"]!,
                                textAlign: TextAlign.center,
                                style: primaryFont.copyWith(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          color: const Color(0xffdb4242)),
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, right: 15),
                                        child: Text(
                                          "Explore Our products",
                                          style: primaryFont.copyWith(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                );
              }).toList(),
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                autoPlayInterval: const Duration(seconds: 6),
                aspectRatio: 2.0,
                initialPage: 2,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Welcome to Natural Blend",
                        style: primaryFont.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "we are aleppy based food production, manufacturing and exporting company. Embark on a tantalizing journey of flavors and aromas with Natural Blend. We are dedicated to sourcing and delivering the finest quality spices from around the world. Immerse yourself in our diverse range of aromatic treasures, meticulously selected to enhance your culinary creations. Whether you're a passionate chef, a spice enthusiast, or a discerning buyer, we invite you to explore our exceptional collection and experience the essence of pure taste.",
                        textAlign: TextAlign.center,
                        style: primaryFont.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black54),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Image.asset("assets/images/th-876664973.jpeg"),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green.withOpacity(0.1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      child: Image.asset(
                        "assets/images/ingredients.png",
                        fit: BoxFit.contain,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Exquisite Spice\nSelection",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green.withOpacity(0.1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      child: Image.asset(
                        "assets/images/navigation.png",
                        fit: BoxFit.contain,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Global Sourcing",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green.withOpacity(0.1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      child: Image.asset(
                        "assets/images/inspection.png",
                        fit: BoxFit.contain,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Uncompromising Quality",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green.withOpacity(0.1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      child: Image.asset(
                        "assets/images/deal.png",
                        fit: BoxFit.contain,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Exceptional Service",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Our Products",
                textAlign: TextAlign.center,
                style: primaryFont.copyWith(
                    color: Colors.black87,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 350,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                    color: Colors.grey.withOpacity(0.1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Container(
                        height: 250,
                        child: Image.asset(
                          "assets/images/masla_image.jpeg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Masala Koottu",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                height: 350,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                    color: Colors.grey.withOpacity(0.1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                       padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: 250,
                        child: Image.asset(
                          "assets/images/WhatsApp Image 2023-05-20 at 2.00.14 PM(2).jpeg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Dhahamukthi",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                height: 350,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                    color: Colors.grey.withOpacity(0.1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                       padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: 250,
                        child: Image.asset(
                          "assets/images/WhatsApp Image 2023-05-20 at 2.00.15 PM(1).jpeg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Masala powders",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 350,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                    color: Colors.grey.withOpacity(0.1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        height: 250,
                        child: Image.asset(
                          "assets/images/WhatsApp Image 2023-05-20 at 2.00.16 PM.jpeg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Crushed Chillies",
                      textAlign: TextAlign.center,
                      style: primaryFont.copyWith(
                          color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                height: 350,
                width: 250,
                
              ),
              Container(
                height: 350,
                width: 250,
                
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       height: 50,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(40),
          //           color: Colors.green),
          //       alignment: Alignment.center,
          //       child: Padding(
          //         padding: const EdgeInsets.only(left: 25, right: 25),
          //         child: Text(
          //           "View More",
          //           style: primaryFont.copyWith(
          //               color: Colors.white,
          //               fontSize: 18,
          //               fontWeight: FontWeight.w500),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          const SizedBox(
            height: 50,
          ),
          BottomWidget()
        ],
      ),
    );
  }
}
