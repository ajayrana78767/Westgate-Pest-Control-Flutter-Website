import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:westgate_pest_control_website_/pages/about_us_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'assets/images/slider_image_3.png',
    'assets/images/slider_image_1.png',
    'assets/images/slider_image_2.png',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 60,
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    '+61 426 040 040',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'info@westgatepestcontrol.com.au',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            pinned: true,
            expandedHeight: 10.0, // Adjust the height as needed
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.symmetric(horizontal: 20),
              title: SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/images/Logo.png'),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Westgate Pest Control',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                      const Spacer(),
                      buildNavLink('HOME'),
                      buildNavLink('ABOUT'),
                      buildNavLink('SERVICES'),
                      buildNavLink('WHY US'),
                      buildNavLink('GALLERY'),
                      buildNavLink('FAQ'),
                      buildNavLink('CONTACT'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 600,
                    autoPlay: true,
                    enlargeCenterPage: false,
                    aspectRatio: 2560 / 400,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 500),
                    viewportFraction: 1.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: imgList
                      .map((item) => Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 400,
                          ))
                      .toList(),
                ),
                const Positioned(
                  bottom: 200,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Westgate Pest Control',
                          style: TextStyle(
                            fontSize: 64,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'We provide effective pest solutions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      int index = entry.key;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        child: Container(
                          width: 30.0,
                          height: 3.0,
                          margin: const EdgeInsets.symmetric(horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: _currentIndex == index
                                ? Theme.of(context).colorScheme.onPrimary
                                : Colors.grey,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 200,
                  bottom: 200,
                  child: IconButton(
                    onPressed: () {
                      // Go to the previous slide
                      if (_currentIndex > 0) {
                        setState(() {
                          _currentIndex = _currentIndex--;
                        });
                      }
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    iconSize: 32.0,
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 200,
                  bottom: 200,
                  child: IconButton(
                    onPressed: () {
                      // Go to the next slide
                      if (_currentIndex < imgList.length - 1) {
                        setState(() {
                          _currentIndex = _currentIndex++;
                        });
                      }
                    },
                    icon: const Icon(Icons.arrow_forward_ios),
                    color: Colors.white,
                    iconSize: 32.0,
                  ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: AboutUsPage(),
          ),
        ],
      ),
    );
  }

  Widget buildNavLink(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
