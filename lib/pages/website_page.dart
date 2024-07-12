// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:westgate_pest_control_website_/pages/about_us_page.dart';
// import 'package:westgate_pest_control_website_/pages/contact_us_page.dart';
// import 'package:westgate_pest_control_website_/pages/faq_page.dart';
// import 'package:westgate_pest_control_website_/pages/gallery_page.dart';
// import 'package:westgate_pest_control_website_/pages/services_page.dart';
// import 'package:westgate_pest_control_website_/pages/why_us_page.dart';

// class WebsitePage extends StatefulWidget {
//   const WebsitePage({Key? key}) : super(key: key);

//   @override
//   State<WebsitePage> createState() => _WebsitePageState();
// }

// class _WebsitePageState extends State<WebsitePage> {
//   final List<String> imgList = [
//     'assets/images/slider_image_3.png',
//     'assets/images/slider_image_1.png',
//     'assets/images/slider_image_2.png',
//   ];

//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: Container(
//               height: 60,
//               color: Theme.of(context).colorScheme.primary,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(
//                       Icons.phone,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const Text(
//                     '+61 426 040 040',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.white,
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(
//                       Icons.email,
//                       color: Colors.white,
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(right: 20),
//                     child: Text(
//                       'info@westgatepestcontrol.com.au',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.normal,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SliverAppBar(
//             backgroundColor: Theme.of(context).colorScheme.onPrimary,
//             pinned: true,
//             expandedHeight: 10.0, // Adjust the height as needed
//             flexibleSpace: FlexibleSpaceBar(
//               titlePadding: const EdgeInsets.symmetric(horizontal: 20),
//               title: SizedBox(
//                 height: 80,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         height: 120,
//                         width: 120,
//                         child: Image.asset('assets/images/Logo.png'),
//                       ),
//                       const SizedBox(width: 20),
//                       Text(
//                         'Westgate Pest Control',
//                         style: GoogleFonts.plusJakartaSans(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Theme.of(context).colorScheme.onSecondary,
//                         ),
//                       ),
//                       const Spacer(),
//                       buildNavLink('HOME'),
//                       buildNavLink('ABOUT'),
//                       buildNavLink('SERVICES'),
//                       buildNavLink('WHY US'),
//                       buildNavLink('GALLERY'),
//                       buildNavLink('FAQ'),
//                       buildNavLink('CONTACT'),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Stack(
//               children: [
//                 CarouselSlider(
//                   options: CarouselOptions(
//                     height: 600,
//                     autoPlay: true,
//                     enlargeCenterPage: false,
//                     aspectRatio: 2560 / 400,
//                     autoPlayCurve: Curves.fastOutSlowIn,
//                     enableInfiniteScroll: true,
//                     autoPlayAnimationDuration:
//                         const Duration(milliseconds: 500),
//                     viewportFraction: 1.0,
//                     onPageChanged: (index, reason) {
//                       setState(() {
//                         _currentIndex = index;
//                       });
//                     },
//                   ),
//                   items: imgList
//                       .map((item) => Image.asset(
//                             item,
//                             fit: BoxFit.cover,
//                             width: double.infinity,
//                             height: 400,
//                           ))
//                       .toList(),
//                 ),
//                 const Positioned(
//                   bottom: 200,
//                   left: 0,
//                   right: 0,
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Westgate Pest Control',
//                           style: TextStyle(
//                             fontSize: 64,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         Text(
//                           'We provide effective pest solutions',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.normal,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 20,
//                   left: 0,
//                   right: 0,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: imgList.asMap().entries.map((entry) {
//                       int index = entry.key;
//                       return GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             _currentIndex = index;
//                           });
//                         },
//                         child: Container(
//                           width: 30.0,
//                           height: 3.0,
//                           margin: const EdgeInsets.symmetric(horizontal: 2.0),
//                           decoration: BoxDecoration(
//                             shape: BoxShape.rectangle,
//                             color: _currentIndex == index
//                                 ? Theme.of(context).colorScheme.onPrimary
//                                 : Colors.grey,
//                           ),
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//                 Positioned(
//                   left: 20,
//                   top: 200,
//                   bottom: 200,
//                   child: IconButton(
//                     onPressed: () {
//                       // Go to the previous slide
//                       if (_currentIndex > 0) {
//                         setState(() {
//                           _currentIndex = _currentIndex--;
//                         });
//                       }
//                     },
//                     icon: const Icon(Icons.arrow_back_ios),
//                     color: Colors.white,
//                     iconSize: 32.0,
//                   ),
//                 ),
//                 Positioned(
//                   right: 20,
//                   top: 200,
//                   bottom: 200,
//                   child: IconButton(
//                     onPressed: () {
//                       // Go to the next slide
//                       if (_currentIndex < imgList.length - 1) {
//                         setState(() {
//                           _currentIndex = _currentIndex++;
//                         });
//                       }
//                     },
//                     icon: const Icon(Icons.arrow_forward_ios),
//                     color: Colors.white,
//                     iconSize: 32.0,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SliverToBoxAdapter(
//             child: AboutUsPage(),
//           ),
//           SliverToBoxAdapter(
//             child: ServicesPage(),
//           ),
//           SliverToBoxAdapter(
//             child: WhyUsPage(),
//           ),
//           SliverToBoxAdapter(
//             child: GalleryPage(),
//           ),
//           const SliverToBoxAdapter(
//             child: FaqPage(),
//           ),
//           const SliverToBoxAdapter(
//             child: ContactUsPage(),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildNavLink(String text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Text(
//         text,
//         style: TextStyle(
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//           color: Theme.of(context).colorScheme.primary,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:westgate_pest_control_website_/pages/about_us_page.dart';
import 'package:westgate_pest_control_website_/pages/contact_us_page.dart';
import 'package:westgate_pest_control_website_/pages/faq_page.dart';
import 'package:westgate_pest_control_website_/pages/gallery_page.dart';
import 'package:westgate_pest_control_website_/pages/home_page.dart';
import 'package:westgate_pest_control_website_/pages/services_page.dart';
import 'package:westgate_pest_control_website_/pages/why_us_page.dart';
import 'package:westgate_pest_control_website_/widgets/haverable_list.dart';

class WebsitePage extends StatefulWidget {
  const WebsitePage({Key? key}) : super(key: key);

  @override
  State<WebsitePage> createState() => _WebsitePageState();
}

class _WebsitePageState extends State<WebsitePage> {
  void _openCustomDrawer(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          color: Colors.transparent,
          height: 500,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildListItem(context, 'HOME'),
                _buildListItem(context, 'ABOUT'),
                _buildListItem(context, 'SERVICES'),
                _buildListItem(context, 'WHY US'),
                _buildListItem(context, 'GALLERY'),
                _buildListItem(context, 'FAQ'),
                _buildListItem(context, 'CONTACT'),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildListItem(BuildContext context, String title) {
    return HoverableListItem(title: title);
  }

  @override
  Widget build(BuildContext context) {
    double expandedHeight =
        MediaQuery.of(context).size.width < 600 ? 70.0 : 120.0;
    double logoSize = MediaQuery.of(context).size.width < 600 ? 60.0 : 120.0;
    return Scaffold(
      // drawer: SideDrawer(
      //   onItemTap: (title) {
      //     // Handle navigation based on the selected item title
      //     switch (title) {
      //       case 'home':
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => HomePage()),
      //         // );
      //         break;
      //       case 'about':
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => AboutUsPage()),
      //         // );
      //         break;
      //       case 'services':
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => ServicesPage()),
      //         // );
      //         break;
      //       case 'why us':
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => WhyUsPage()),
      //         // );
      //         break;
      //       case 'gallery':
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => GalleryPage()),
      //         // );
      //         break;
      //       case 'faq':
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => FaqPage()),
      //         // );
      //         break;
      //       case 'contact':
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => ContactUsPage()),
      //         // );
      //         break;
      //       default:
      //         // Handle default case or any other actions
      //         break;
      //     }
      //   },
      // ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 70,
              color: Theme.of(context).colorScheme.primary,
              child: MediaQuery.of(context).size.width < 600
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 5),
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 20,
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
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 5),
                          height: 30,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.email,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              const Center(
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
                      ],
                    )
                  : Row(
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
            expandedHeight: 80,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                return FlexibleSpaceBar(
                  titlePadding: const EdgeInsets.only(
                    left: 20,
                    top: 20,
                    right: 20,
                  ),
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset('assets/images/Logo.png'),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Westgate Pest Control',
                          maxLines:
                              MediaQuery.of(context).size.width < 600 ? 3 : 1,
                          // overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: MediaQuery.of(context).size.width < 600
                                ? 18
                                : 24,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      if (MediaQuery.of(context).size.width < 1500)
                        InkWell(
                          onTap: () {
                            // Scaffold.of(context)
                            //     .openDrawer(); // Open the drawer
                            _openCustomDrawer(context);
                          },
                          child: Container(
                              // padding: EdgeInsets.all(),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 1,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                              ),
                              child: Icon(Icons.menu,
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                        )
                      else
                        Row(
                          children: [
                            buildNavLink('HOME'),
                            buildNavLink('ABOUT'),
                            buildNavLink('SERVICES'),
                            buildNavLink('WHY US'),
                            buildNavLink('GALLERY'),
                            buildNavLink('FAQ'),
                            buildNavLink('CONTACT'),
                          ],
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: HomePage(),
            // Stack(
            //   children: [
            //     CarouselSlider(
            //       options: CarouselOptions(
            //         height: 600,
            //         autoPlay: true,
            //         enlargeCenterPage: false,
            //         aspectRatio: 2560 / 400,
            //         autoPlayCurve: Curves.fastOutSlowIn,
            //         enableInfiniteScroll: true,
            //         autoPlayAnimationDuration:
            //             const Duration(milliseconds: 500),
            //         viewportFraction: 1.0,
            //         onPageChanged: (index, reason) {
            //           setState(() {
            //             _currentIndex = index;
            //           });
            //         },
            //       ),
            //       items: imgList
            //           .map((item) => Image.asset(
            //                 item,
            //                 fit: BoxFit.cover,
            //                 width: double.infinity,
            //                 height: 400,
            //               ))
            //           .toList(),
            //     ),
            //     const Positioned(
            //       bottom: 200,
            //       left: 0,
            //       right: 0,
            //       child: Align(
            //         alignment: Alignment.center,
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               'Westgate Pest Control',
            //               style: TextStyle(
            //                 fontSize: 64,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.white,
            //               ),
            //             ),
            //             SizedBox(height: 20),
            //             Text(
            //               'We provide effective pest solutions',
            //               textAlign: TextAlign.center,
            //               style: TextStyle(
            //                 fontSize: 24,
            //                 fontWeight: FontWeight.normal,
            //                 color: Colors.white,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //     Positioned(
            //       bottom: 20,
            //       left: 0,
            //       right: 0,
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: imgList.asMap().entries.map((entry) {
            //           int index = entry.key;
            //           return GestureDetector(
            //             onTap: () {
            //               setState(() {
            //                 _currentIndex = index;
            //               });
            //             },
            //             child: Container(
            //               width: 30.0,
            //               height: 3.0,
            //               margin: const EdgeInsets.symmetric(horizontal: 2.0),
            //               decoration: BoxDecoration(
            //                 shape: BoxShape.rectangle,
            //                 color: _currentIndex == index
            //                     ? Theme.of(context).colorScheme.onPrimary
            //                     : Colors.grey,
            //               ),
            //             ),
            //           );
            //         }).toList(),
            //       ),
            //     ),
            //     Positioned(
            //       left: 20,
            //       top: 200,
            //       bottom: 200,
            //       child: IconButton(
            //         onPressed: () {
            //           // Go to the previous slide
            //           if (_currentIndex > 0) {
            //             setState(() {
            //               _currentIndex--;
            //             });
            //           }
            //         },
            //         icon: const Icon(Icons.arrow_back_ios),
            //         color: Colors.white,
            //         iconSize: 32.0,
            //       ),
            //     ),
            //     Positioned(
            //       right: 20,
            //       top: 200,
            //       bottom: 200,
            //       child: IconButton(
            //         onPressed: () {
            //           // Go to the next slide
            //           if (_currentIndex < imgList.length - 1) {
            //             setState(() {
            //               _currentIndex++;
            //             });
            //           }
            //         },
            //         icon: const Icon(Icons.arrow_forward_ios),
            //         color: Colors.white,
            //         iconSize: 32.0,
            //       ),
            //     ),
            //   ],
            // ),
          ),
          const SliverToBoxAdapter(
            child: AboutUsPage(),
          ),
          SliverToBoxAdapter(
            child: ServicesPage(),
          ),
          SliverToBoxAdapter(
            child: WhyUsPage(),
          ),
          SliverToBoxAdapter(
            child: GalleryPage(),
          ),
          const SliverToBoxAdapter(
            child: FaqPage(),
          ),
          const SliverToBoxAdapter(
            child: ContactUsPage(),
          ),
        ],
      ),
    );
  }

  Widget buildNavLink(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
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
