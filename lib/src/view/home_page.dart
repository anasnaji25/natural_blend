import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:natural_blend/src/constants/app_fonts.dart';

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "NB",
          style: primaryFont.copyWith(color: Colors.green),
        ),
        actions: [
          Row(
            children: [
              Text(
                "Home",
                style: primaryFont.copyWith(
                    color: Color.fromARGB(255, 65, 65, 65), fontSize: 16),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "About Us",
                style: primaryFont.copyWith(
                    color: Color.fromARGB(255, 65, 65, 65), fontSize: 16),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "Contact Us",
                style: primaryFont.copyWith(
                    color: Color.fromARGB(255, 65, 65, 65), fontSize: 16),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: size.width,
            height: 600,
            child: CarouselSlider(
              items: [
                {
                  "image": "assets/images/image1.jpg",
                  "name": "TEMPLES OF\nKNOWLEDGE",
                  "image_large": "assets/images/sliders/Slider.jpg",
                  "ad": "1",
                },
                {
                  "image": "assets/images/image (1).jpg",
                  "name": "TEMPLES OF\nBAKTHI",
                  "image_large": "assets/images/sliders/Slider2.jpg",
                  "ad": "1",
                },
                {
                  "image": "assets/images/image (2).jpg",
                  "name": "TEMPLES OF\nBAKTHI",
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
                                        "Divinity Within Your Reach",
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
                                " We are human, a wisp of the cosmos that searches for the divine\nlight. We are ONE.",
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
                                          "Explore Temple",
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
        ],
      ),
    );
  }
}
