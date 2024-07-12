// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:westgate_pest_control_website_/pages/about_us_page.dart';
// import 'package:westgate_pest_control_website_/pages/contact_us_page.dart';
// import 'package:westgate_pest_control_website_/pages/faq_page.dart';
// import 'package:westgate_pest_control_website_/pages/gallery_page.dart';
// import 'package:westgate_pest_control_website_/pages/home_page.dart';
// import 'package:westgate_pest_control_website_/pages/services_page.dart';
// import 'package:westgate_pest_control_website_/pages/why_us_page.dart';
// import 'package:westgate_pest_control_website_/widgets/haverable_list.dart';

// class WebsitePage extends StatefulWidget {
//   const WebsitePage({Key? key}) : super(key: key);

//   @override
//   State<WebsitePage> createState() => _WebsitePageState();
// }

// class _WebsitePageState extends State<WebsitePage> {
//   void _openCustomDrawer(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       backgroundColor: Colors.transparent,
//       builder: (BuildContext context) {
//         return Container(
//           color: Colors.transparent,
//           height: 500,
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 _buildListItem(context, 'HOME'),
//                 _buildListItem(context, 'ABOUT'),
//                 _buildListItem(context, 'SERVICES'),
//                 _buildListItem(context, 'WHY US'),
//                 _buildListItem(context, 'GALLERY'),
//                 _buildListItem(context, 'FAQ'),
//                 _buildListItem(context, 'CONTACT'),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildListItem(BuildContext context, String title) {
//     return HoverableListItem(title: title);
//   }

//   @override
//   Widget build(BuildContext context) {
//     double expandedHeight =
//         MediaQuery.of(context).size.width < 600 ? 70.0 : 120.0;
//     double logoSize = MediaQuery.of(context).size.width < 600 ? 60.0 : 120.0;
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: Container(
//               height: 70,
//               color: Theme.of(context).colorScheme.primary,
//               child: MediaQuery.of(context).size.width < 600
//                   ? Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.only(right: 5),
//                           height: 30,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(
//                                   Icons.phone,
//                                   color: Colors.white,
//                                   size: 20,
//                                 ),
//                               ),
//                               const Text(
//                                 '+61 426 040 040',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.normal,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.only(right: 5),
//                           height: 30,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(
//                                   Icons.email,
//                                   color: Colors.white,
//                                   size: 20,
//                                 ),
//                               ),
//                               const Center(
//                                 child: Text(
//                                   'info@westgatepestcontrol.com.au',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.normal,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     )
//                   : Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.phone,
//                             color: Colors.white,
//                           ),
//                         ),
//                         const Text(
//                           '+61 426 040 040',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal,
//                             color: Colors.white,
//                           ),
//                         ),
//                         IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.email,
//                             color: Colors.white,
//                           ),
//                         ),
//                         const Padding(
//                           padding: EdgeInsets.only(right: 20),
//                           child: Text(
//                             'info@westgatepestcontrol.com.au',
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.normal,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//             ),
//           ),
//           SliverAppBar(
//             backgroundColor: Theme.of(context).colorScheme.onPrimary,
//             pinned: true,
//             expandedHeight: 80,
//             flexibleSpace: LayoutBuilder(
//               builder: (context, constraints) {
//                 return FlexibleSpaceBar(
//                   titlePadding: const EdgeInsets.only(
//                     left: 20,
//                     top: 20,
//                     right: 20,
//                   ),
//                   title: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         height: 80,
//                         width: 80,
//                         child: Image.asset('assets/images/Logo.png'),
//                       ),
//                       const SizedBox(width: 10),
//                       Expanded(
//                         child: Text(
//                           'Westgate Pest Control',
//                           maxLines:
//                               MediaQuery.of(context).size.width < 600 ? 3 : 1,
//                           // overflow: TextOverflow.ellipsis,
//                           style: GoogleFonts.plusJakartaSans(
//                             fontSize: MediaQuery.of(context).size.width < 600
//                                 ? 18
//                                 : 24,
//                             fontWeight: FontWeight.bold,
//                             color: Theme.of(context).colorScheme.secondary,
//                           ),
//                         ),
//                       ),
//                       if (MediaQuery.of(context).size.width < 1500)
//                         InkWell(
//                           onTap: () {
//                             // Scaffold.of(context)
//                             //     .openDrawer(); // Open the drawer
//                             _openCustomDrawer(context);
//                           },
//                           child: Container(
//                               // padding: EdgeInsets.all(),
//                               margin: const EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.rectangle,
//                                 borderRadius: BorderRadius.circular(5),
//                                 border: Border.all(
//                                     width: 1,
//                                     color: Theme.of(context)
//                                         .colorScheme
//                                         .secondary),
//                               ),
//                               child: Icon(Icons.menu,
//                                   color:
//                                       Theme.of(context).colorScheme.primary)),
//                         )
//                       else
//                         Row(
//                           children: [
//                             buildNavLink('HOME'),
//                             buildNavLink('ABOUT'),
//                             buildNavLink('SERVICES'),
//                             buildNavLink('WHY US'),
//                             buildNavLink('GALLERY'),
//                             buildNavLink('FAQ'),
//                             buildNavLink('CONTACT'),
//                           ],
//                         ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           const SliverToBoxAdapter(
//             child: HomePage(),
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
//       padding: const EdgeInsets.symmetric(horizontal: 10),
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
  final ScrollController _scrollController = ScrollController();

  // Define keys for each section
  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey servicesKey = GlobalKey();
  final GlobalKey whyUsKey = GlobalKey();
  final GlobalKey galleryKey = GlobalKey();
  final GlobalKey faqKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

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
                _buildListItem(context, 'HOME', homeKey),
                _buildListItem(context, 'ABOUT', aboutKey),
                _buildListItem(context, 'SERVICES', servicesKey),
                _buildListItem(context, 'WHY US', whyUsKey),
                _buildListItem(context, 'GALLERY', galleryKey),
                _buildListItem(context, 'FAQ', faqKey),
                _buildListItem(context, 'CONTACT', contactKey),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildListItem(BuildContext context, String title, GlobalKey key) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context); // Close the bottom sheet
        // Delay the scroll to ensure bottom sheet is closed first
        Future.delayed(Duration(milliseconds: 100), () {
          _scrollToSection(key);
        });
      },
      child: HoverableListItem(title: title),
    );
  }

  @override
  Widget build(BuildContext context) {
    double expandedHeight =
        MediaQuery.of(context).size.width < 600 ? 70.0 : 120.0;
    double logoSize = MediaQuery.of(context).size.width < 600 ? 60.0 : 120.0;
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
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
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: MediaQuery.of(context).size.width < 600
                                ? 18
                                : 24,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                      if (MediaQuery.of(context).size.width < 1500)
                        InkWell(
                          onTap: () {
                            _openCustomDrawer(context);
                          },
                          child: Container(
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
                            _buildNavButton('HOME', homeKey),
                            _buildNavButton('ABOUT', aboutKey),
                            _buildNavButton('SERVICES', servicesKey),
                            _buildNavButton('WHY US', whyUsKey),
                            _buildNavButton('GALLERY', galleryKey),
                            _buildNavButton('FAQ', faqKey),
                            _buildNavButton('CONTACT', contactKey),
                          ],
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(
            key: homeKey,
            child: const HomePage(),
          ),
          SliverToBoxAdapter(
            key: aboutKey,
            child: const AboutUsPage(),
          ),
          SliverToBoxAdapter(
            key: servicesKey,
            child: ServicesPage(),
          ),
          SliverToBoxAdapter(
            key: whyUsKey,
            child: WhyUsPage(),
          ),
          SliverToBoxAdapter(
            key: galleryKey,
            child: GalleryPage(),
          ),
          SliverToBoxAdapter(
            key: faqKey,
            child: const FaqPage(),
          ),
          SliverToBoxAdapter(
            key: contactKey,
            child: const ContactUsPage(),
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(String title, GlobalKey key) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          _scrollToSection(key);
        },
        child: Text(
          title,
          style: GoogleFonts.plusJakartaSans(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.normal,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
