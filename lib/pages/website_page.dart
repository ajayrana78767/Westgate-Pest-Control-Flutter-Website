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
//   final ScrollController _scrollController = ScrollController();

//   // Define keys for each section
//   final GlobalKey homeKey = GlobalKey();
//   final GlobalKey aboutKey = GlobalKey();
//   final GlobalKey servicesKey = GlobalKey();
//   final GlobalKey whyUsKey = GlobalKey();
//   final GlobalKey galleryKey = GlobalKey();
//   final GlobalKey faqKey = GlobalKey();
//   final GlobalKey contactKey = GlobalKey();

//   // Map to keep track of which button is clicked
//   final Map<String, bool> _clickedButtons = {
//     'HOME': false,
//     'ABOUT': false,
//     'SERVICES': false,
//     'WHY US': false,
//     'GALLERY': false,
//     'FAQ': false,
//     'CONTACT': false,
//   };
//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_onScroll);
//   }

//   @override
//   void dispose() {
//     _scrollController.removeListener(_onScroll);
//     _scrollController.dispose();
//     super.dispose();
//   }

//   void _onScroll() {
//     final scrollPosition = _scrollController.position.pixels;
//     final contextHeight = MediaQuery.of(context).size.height;

//     setState(() {
//       _clickedButtons.updateAll((key, value) => false);
//       if (_isInView(homeKey, scrollPosition, contextHeight)) {
//         _clickedButtons['HOME'] = true;
//       } else if (_isInView(aboutKey, scrollPosition, contextHeight)) {
//         _clickedButtons['ABOUT'] = true;
//       } else if (_isInView(servicesKey, scrollPosition, contextHeight)) {
//         _clickedButtons['SERVICES'] = true;
//       } else if (_isInView(whyUsKey, scrollPosition, contextHeight)) {
//         _clickedButtons['WHY US'] = true;
//       } else if (_isInView(galleryKey, scrollPosition, contextHeight)) {
//         _clickedButtons['GALLERY'] = true;
//       } else if (_isInView(faqKey, scrollPosition, contextHeight)) {
//         _clickedButtons['FAQ'] = true;
//       } else if (_isInView(contactKey, scrollPosition, contextHeight)) {
//         _clickedButtons['CONTACT'] = true;
//       }
//     });
//   }

//   bool _isInView(GlobalKey key, double scrollPosition, double contextHeight) {
//     final context = key.currentContext;
//     if (context != null) {
//       final box = context.findRenderObject() as RenderBox;
//       final position = box.localToGlobal(Offset.zero).dy;
//       return position >= 0 && position < contextHeight;
//     }
//     return false;
//   }

//   void _scrollToSection(GlobalKey key) {
//     final context = key.currentContext;
//     if (context != null) {
//       Scrollable.ensureVisible(
//         context,
//         duration: const Duration(seconds: 1),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

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
//                 _buildListItem(context, 'HOME', homeKey),
//                 _buildListItem(context, 'ABOUT', aboutKey),
//                 _buildListItem(context, 'SERVICES', servicesKey),
//                 _buildListItem(context, 'WHY US', whyUsKey),
//                 _buildListItem(context, 'GALLERY', galleryKey),
//                 _buildListItem(context, 'FAQ', faqKey),
//                 _buildListItem(context, 'CONTACT', contactKey),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildListItem(BuildContext context, String title, GlobalKey key) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.pop(context); // Close the bottom sheet
//         // Delay the scroll to ensure bottom sheet is closed first
//         Future.delayed(const Duration(milliseconds: 300), () {
//           _scrollToSection(key);
//         });
//       },
//       child: HoverableListItem(title: title),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     double expandedHeight =
//         MediaQuery.of(context).size.width < 600 ? 70.0 : 120.0;
//     double logoSize = MediaQuery.of(context).size.width < 600 ? 60.0 : 120.0;
//     return Scaffold(
//       body: CustomScrollView(
//         controller: _scrollController,
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
//                           style: GoogleFonts.plusJakartaSans(
//                             fontSize: MediaQuery.of(context).size.width < 600
//                                 ? 18
//                                 : 24,
//                             fontWeight: FontWeight.bold,
//                             color: Theme.of(context).colorScheme.primary,
//                           ),
//                         ),
//                       ),
//                       if (MediaQuery.of(context).size.width < 1500)
//                         InkWell(
//                           onTap: () {
//                             _openCustomDrawer(context);
//                           },
//                           child: Container(
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
//                             _buildNavButton('HOME', homeKey, false),
//                             _buildNavButton('ABOUT', aboutKey, false),
//                             _buildNavButton('SERVICES', servicesKey, false),
//                             _buildNavButton('WHY US', whyUsKey, false),
//                             _buildNavButton('GALLERY', galleryKey, false),
//                             _buildNavButton('FAQ', faqKey, false),
//                             _buildNavButton('CONTACT', contactKey, false),
//                           ],
//                         ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//           SliverToBoxAdapter(
//             key: homeKey,
//             child: const HomePage(),
//           ),
//           SliverToBoxAdapter(
//             key: aboutKey,
//             child: const AboutUsPage(),
//           ),
//           SliverToBoxAdapter(
//             key: servicesKey,
//             child: ServicesPage(),
//           ),
//           SliverToBoxAdapter(
//             key: whyUsKey,
//             child: WhyUsPage(),
//           ),
//           SliverToBoxAdapter(
//             key: galleryKey,
//             child: GalleryPage(),
//           ),
//           SliverToBoxAdapter(
//             key: faqKey,
//             child: const FaqPage(),
//           ),
//           SliverToBoxAdapter(
//             key: contactKey,
//             child: ContactUsPage(),
//           ),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(60.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Westgate Pest Control',
//                           style: TextStyle(
//                             color: Theme.of(context).colorScheme.secondary,
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         Container(
//                           height: 150,
//                           width: 150,
//                           decoration: const BoxDecoration(
//                             image: DecorationImage(
//                               image: AssetImage('assets/images/Logo.png'),
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'About',
//                           style: TextStyle(
//                             color: Theme.of(context).colorScheme.secondary,
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const SizedBox(
//                           height: 1,
//                           width: 150,
//                           child: Divider(color: Colors.grey),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text(
//                           '24/7 Pest Control Services in Melbourne, VIC, Australia, Victoria and Surrounding Areas.',
//                           textAlign: TextAlign.start,
//                           maxLines: 3,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Links',
//                           style: TextStyle(
//                             color: Theme.of(context).colorScheme.secondary,
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const SizedBox(
//                           height: 1,
//                           width: 150,
//                           child: Divider(color: Colors.grey),
//                         ),
//                         const SizedBox(height: 10),
//                         TextButton(
//                           onPressed: () {
//                             _scrollToSection(homeKey);
//                           },
//                           child: const Text('Home'),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             _scrollToSection(aboutKey);
//                           },
//                           child: const Text('About'),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             _scrollToSection(servicesKey);
//                           },
//                           child: const Text('Services'),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             _scrollToSection(whyUsKey);
//                           },
//                           child: const Text('Why Us'),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             _scrollToSection(faqKey);
//                           },
//                           child: const Text('FAQ'),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             _scrollToSection(contactKey);
//                           },
//                           child: const Text('Contact'),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 50,
//                     width: 1,
//                     child: const Divider(color: Colors.grey),
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Contact',
//                           style: TextStyle(
//                             color: Theme.of(context).colorScheme.secondary,
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const SizedBox(
//                           height: 1,
//                           width: 150,
//                           child: Divider(color: Colors.grey),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text(
//                           "+61 426 040 040\nMelbourne, VIC, Australia, Victoria\ninfo@westgatepestcontrol.com.au",
//                           textAlign: TextAlign.start,
//                           maxLines: 3,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

// ignore_for_file: library_private_types_in_public_api, unused_field

//   Widget _buildNavButton(String title, GlobalKey key, bool isClicked) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//             // Reset all buttons to false and set the clicked button to true
//             _clickedButtons.updateAll((key, value) => false);
//             _clickedButtons[title] = true;
//           });
//           _scrollToSection(key);
//         },
//         child: Text(
//           title,
//           style: GoogleFonts.plusJakartaSans(
//             color: _clickedButtons[title]!
//                 ? Theme.of(context).colorScheme.primary
//                 : Theme.of(context).colorScheme.secondary,
//             fontWeight: FontWeight.normal,
//             fontSize: 12,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:westgate_pest_control_website_/models/service_model.dart';
import 'package:westgate_pest_control_website_/pages/about_us_page.dart';
import 'package:westgate_pest_control_website_/pages/contact_us_page.dart';
import 'package:westgate_pest_control_website_/pages/faq_page.dart';
import 'package:westgate_pest_control_website_/pages/gallery_page.dart';
import 'package:westgate_pest_control_website_/pages/home_page.dart';
import 'package:westgate_pest_control_website_/pages/services_page.dart';
import 'package:westgate_pest_control_website_/pages/why_us_page.dart';
import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';
import 'package:westgate_pest_control_website_/widgets/hover_button.dart';

class WebsitePage extends StatefulWidget {
  const WebsitePage({super.key});

  @override
  State<WebsitePage> createState() => _WebsitePageState();
}

class _WebsitePageState extends State<WebsitePage> {
  final Uri ssiWebsiteLink = Uri.parse('https://synergysoftindia.com/');
  final Uri facebookLink = Uri.parse(
      'https://www.facebook.com/people/Westgate-pest-control/61551553513602');

  final Uri googleBusinessLink = Uri.parse(
      'https://www.google.com/maps/place/WestGate+Pest+Control/@-36.0563102,147.6200657,7z/data=!3m1!4b1!4m6!3m5!1s0x6ad68ffa7fd75d7f:0x45626619588196f!8m2!3d-36.0563102!4d147.6200657!16s%2Fg%2F11l6kjm7bm?entry=ttu');

  final ScrollController _scrollController = ScrollController();

  // // Define keys for each section
  // final GlobalKey homeKey = GlobalKey();
  // final GlobalKey aboutKey = GlobalKey();
  // final GlobalKey servicesKey = GlobalKey();
  // final GlobalKey whyUsKey = GlobalKey();
  // final GlobalKey galleryKey = GlobalKey();
  // final GlobalKey faqKey = GlobalKey();
  // final GlobalKey contactKey = GlobalKey();
   // Define unique keys for each section
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _whyUsKey = GlobalKey();
  final GlobalKey _galleryKey = GlobalKey();
  final GlobalKey _faqKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();


  // Map to keep track of which button is clicked
  final Map<String, bool> _clickedButtons = {
    'HOME': false,
    'ABOUT': false,
    'SERVICES': false,
    'WHY US': false,
    'GALLERY': false,
    'FAQ': false,
    'CONTACT': false,
  };

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final scrollPosition = _scrollController.position.pixels;
    final contextHeight = MediaQuery.of(context).size.height;

    setState(() {
      _clickedButtons.updateAll((key, value) => false);
      if (_isInView(_homeKey, scrollPosition, contextHeight)) {
        _clickedButtons['HOME'] = true;
      } else if (_isInView(_aboutKey, scrollPosition, contextHeight)) {
        _clickedButtons['ABOUT'] = true;
      } else if (_isInView(_servicesKey, scrollPosition, contextHeight)) {
        _clickedButtons['SERVICES'] = true;
      } else if (_isInView(_whyUsKey, scrollPosition, contextHeight)) {
        _clickedButtons['WHY US'] = true;
      } else if (_isInView(_galleryKey, scrollPosition, contextHeight)) {
        _clickedButtons['GALLERY'] = true;
      } else if (_isInView(_faqKey, scrollPosition, contextHeight)) {
        _clickedButtons['FAQ'] = true;
      } else if (_isInView(_contactKey, scrollPosition, contextHeight)) {
        _clickedButtons['CONTACT'] = true;
      }
    });
  }

  bool _isInView(GlobalKey key, double scrollPosition, double contextHeight) {
    final context = key.currentContext;
    if (context != null) {
      final renderObject = context.findRenderObject();
      if (renderObject is RenderBox) {
        final position = renderObject.localToGlobal(Offset.zero).dy;
        return position >= 0 && position < contextHeight;
      } else if (renderObject is RenderSliverToBoxAdapter) {
        final box = renderObject.child as RenderBox;
        final position = box.localToGlobal(Offset.zero).dy;
        return position >= 0 && position < contextHeight;
      }
    }
    return false;
  }

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
                _buildListItem(context, 'HOME', _homeKey),
                _buildListItem(context, 'ABOUT', _aboutKey),
                _buildListItem(context, 'SERVICES', _servicesKey),
                _buildListItem(context, 'WHY US', _whyUsKey),
                _buildListItem(context, 'GALLERY', _galleryKey),
                _buildListItem(context, 'FAQ', _faqKey),
                _buildListItem(context, 'CONTACT', _contactKey),
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
        Future.delayed(const Duration(milliseconds: 300), () {
          _scrollToSection(key);
        });
      },
      child: HoverableListItem(title: title),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                      if (MediaQuery.of(context).size.width < 1350)
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            NavBarItem(
                              text: 'HOME',
                              isClicked: _clickedButtons['HOME'] ?? false,
                              onTap: () => _scrollToSection(_homeKey),
                            ),
                            NavBarItem(
                              text: 'ABOUT',
                              isClicked: _clickedButtons['ABOUT'] ?? false,
                              onTap: () => _scrollToSection(_aboutKey),
                            ),
                            NavBarItem(
                              text: 'SERVICES',
                              isClicked: _clickedButtons['SERVICES'] ?? false,
                              onTap: () => _scrollToSection(_servicesKey),
                            ),
                            NavBarItem(
                              text: 'WHY US',
                              isClicked: _clickedButtons['WHY US'] ?? false,
                              onTap: () => _scrollToSection(_whyUsKey),
                            ),
                            NavBarItem(
                              text: 'GALLERY',
                              isClicked: _clickedButtons['GALLERY'] ?? false,
                              onTap: () => _scrollToSection(_galleryKey),
                            ),
                            NavBarItem(
                              text: 'FAQ',
                              isClicked: _clickedButtons['FAQ'] ?? false,
                              onTap: () => _scrollToSection(_faqKey),
                            ),
                            NavBarItem(
                              text: 'CONTACT',
                              isClicked: _clickedButtons['CONTACT'] ?? false,
                              onTap: () => _scrollToSection(_contactKey),
                            ),
                          ],
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
          // SliverAppBar(
          //   backgroundColor: Theme.of(context).colorScheme.onPrimary,
          //   pinned: true,
          //   expandedHeight: 80,
          //   flexibleSpace: LayoutBuilder(
          //     builder: (context, constraints) {
          //       return FlexibleSpaceBar(
          //         titlePadding: const EdgeInsets.only(
          //           left: 20,
          //           top: 20,
          //           right: 20,
          //         ),
          //         title: Row(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             SizedBox(
          //               height: 80,
          //               width: 80,
          //               child: Image.asset('assets/images/Logo.png'),
          //             ),
          //             const SizedBox(width: 10),
          //             Expanded(
          //               child: Text(
          //                 'Westgate Pest Control',
          //                 maxLines:
          //                     MediaQuery.of(context).size.width < 600 ? 3 : 1,
          //                 style: GoogleFonts.plusJakartaSans(
          //                   fontSize: MediaQuery.of(context).size.width < 600
          //                       ? 18
          //                       : 24,
          //                   fontWeight: FontWeight.w700,
          //                   color: Theme.of(context).colorScheme.primary,
          //                 ),
          //               ),
          //             ),
          //             const SizedBox(width: 10),
          //             IconButton(
          //               onPressed: () => _openCustomDrawer(context),
          //               icon: Icon(
          //                 Icons.menu,
          //                 color: Theme.of(context).colorScheme.primary,
          //               ),
          //             ),
          //             if (MediaQuery.of(context).size.width >= 600)
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.end,
          //                 children: [
          //                   NavBarItem(
          //                     text: 'HOME',
          //                     isClicked: _clickedButtons['HOME'] ?? false,
          //                     onTap: () => _scrollToSection(homeKey),
          //                   ),
          //                   NavBarItem(
          //                     text: 'ABOUT',
          //                     isClicked: _clickedButtons['ABOUT'] ?? false,
          //                     onTap: () => _scrollToSection(aboutKey),
          //                   ),
          //                   NavBarItem(
          //                     text: 'SERVICES',
          //                     isClicked: _clickedButtons['SERVICES'] ?? false,
          //                     onTap: () => _scrollToSection(servicesKey),
          //                   ),
          //                   NavBarItem(
          //                     text: 'WHY US',
          //                     isClicked: _clickedButtons['WHY US'] ?? false,
          //                     onTap: () => _scrollToSection(whyUsKey),
          //                   ),
          //                   NavBarItem(
          //                     text: 'GALLERY',
          //                     isClicked: _clickedButtons['GALLERY'] ?? false,
          //                     onTap: () => _scrollToSection(galleryKey),
          //                   ),
          //                   NavBarItem(
          //                     text: 'FAQ',
          //                     isClicked: _clickedButtons['FAQ'] ?? false,
          //                     onTap: () => _scrollToSection(faqKey),
          //                   ),
          //                   NavBarItem(
          //                     text: 'CONTACT',
          //                     isClicked: _clickedButtons['CONTACT'] ?? false,
          //                     onTap: () => _scrollToSection(contactKey),
          //                   ),
          //                 ],
          //               ),
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // ),
          // Home section
          SliverToBoxAdapter(
           // key: homeKey,
            child: Column(
              children:  [
                Form(
                  key: _homeKey,
                  child: const HomePage()),
                Form(
                  key: _aboutKey,
                  child: const AboutUsPage()),
                Form(
                  key: _servicesKey,
                  child: ServicesPage()),
                Form(
                  key: _whyUsKey,
                  child: WhyUsPage()),
                Form(
                  key: _galleryKey,
                  child: GalleryPage()),
                 Form(
                  key: _faqKey,
                  child: const FaqPage()),

              ],
            ),
          ),
          // About section
          // SliverToBoxAdapter(
          //   key: aboutKey,
          //   child: const AboutUsPage(),
          // ),
          // // Services section
          // SliverToBoxAdapter(
          //   key: servicesKey,
          //   child:  ServicesPage(),
          // ),
          // // Why Us section
          // SliverToBoxAdapter(key: whyUsKey, child: WhyUsPage()),
          // // Gallery section
          // SliverToBoxAdapter(key: galleryKey, child: GalleryPage()),
          // // FAQ section
          // SliverToBoxAdapter(key: faqKey, child: const FaqPage()),
          // Contact section
          SliverToBoxAdapter(
             // key: contactKey,
              child: Column(
                children: [
                  const ContactUsPage(),
                  Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Westgate Pest Control',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 150,
                                width: 150, // Adjust width as needed
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/Logo.png'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              space10,
                              const SizedBox(
                                height: 1,
                                width: 150, // Adjust width as needed
                                child: Divider(
                                    color:
                                        Colors.grey), // Adjust color as needed
                              ),
                              space10,
                              const Text(
                                '24/7 Pest Control Services in Melbourne, VIC, Australia, Victoria and Surrounding Areas.',
                                textAlign: TextAlign.start,
                                maxLines: 3,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Links',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              space10,
                              const SizedBox(
                                height: 1,
                                width: 150, // Adjust width as needed
                                child: Divider(
                                    color:
                                        Colors.grey), // Adjust color as needed
                              ),
                              space10,
                              TextButton(
                                  onPressed: () {
                                    _scrollToSection(_homeKey);
                                  },
                                  child: Text('Home',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ))),
                              TextButton(
                                  onPressed: () {
                                    _scrollToSection(_aboutKey);
                                  },
                                  child: Text('About',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ))),
                              TextButton(
                                  onPressed: () {
                                    _scrollToSection(_servicesKey);
                                  },
                                  child: Text('Services',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ))),
                              TextButton(
                                  onPressed: () {
                                    _scrollToSection(_whyUsKey);
                                  },
                                  child: Text('Why Us',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ))),
                              TextButton(
                                  onPressed: () {
                                    _scrollToSection(_faqKey);
                                  },
                                  child: Text('Faq',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ))),
                              TextButton(
                                  onPressed: () {
                                    _scrollToSection(_contactKey);
                                  },
                                  child: Text('Contact',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ))),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                          width: 1, // Adjust width as needed
                          child: Divider(
                              color: Colors.grey), // Adjust color as needed
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Contact',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              space10,
                              const SizedBox(
                                height: 1,
                                width: 150, // Adjust width as needed
                                child: Divider(
                                    color:
                                        Colors.grey), // Adjust color as needed
                              ),
                              space10,
                              const Text(
                                "+61 426 040 040\nMelbourne, VIC, Australia, Victoria\ninfo@westgatepestcontrol.com.au",
                                textAlign: TextAlign.start,
                                maxLines: 3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height:
                        MediaQuery.of(context).size.width > 1000 ? 100 : 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth > 1000) {
                            // Layout for larger screens
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Copyright © 2024 Westgatepestcontrol. All Rights Reserved.',
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      HoverButton(
                                        text: 'Facebook',
                                        onPressed: () {
                                          launchUrl(facebookLink);
                                        },
                                        shape: BoxShape.circle,
                                        isImageButton: true,
                                        image: 'assets/images/facebook.svg',
                                      ),
                                      const SizedBox(width: 10),
                                      HoverButton(
                                        text: 'Location',
                                        onPressed: () {
                                          launchUrl(googleBusinessLink);
                                        },
                                        shape: BoxShape.circle,
                                        isImageButton: true,
                                        image:
                                            'assets/images/google_my_business.svg',
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Designed BY',
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          launchUrl(ssiWebsiteLink);
                                        },
                                        child: Text(
                                          'SSI',
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          } else {
                            // Layout for smaller screens
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Copyright © 2024 Westgatepestcontrol. All Rights Reserved.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                                space10,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HoverButton(
                                      text: 'Facebook',
                                      onPressed: () {
                                        launchUrl(facebookLink);
                                      },
                                      shape: BoxShape.circle,
                                      isImageButton: true,
                                      image: 'assets/images/facebook.svg',
                                    ),
                                    const SizedBox(width: 10),
                                    HoverButton(
                                      text: 'Location',
                                      onPressed: () {
                                        launchUrl(googleBusinessLink);
                                      },
                                      shape: BoxShape.circle,
                                      isImageButton: true,
                                      image:
                                          'assets/images/google_my_business.svg',
                                    ),
                                  ],
                                ),
                                space10,
                                Text(
                                  'Designed BY',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    launchUrl(ssiWebsiteLink);
                                  },
                                  child: Text(
                                    'SSI',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                        },
                      ),
                    ),
                  ),

                  // Container(
                  //   height: 100,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //       color: Theme.of(context).colorScheme.secondary),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //       children: [
                  //         Expanded(
                  //           child: Text(
                  //             'Copyright © 2024 Westgatepestcontrol. All Rights Reserved.',
                  //             style: TextStyle(
                  //                 color: Theme.of(context).colorScheme.onPrimary),
                  //           ),
                  //         ),
                  //         Expanded(
                  //           child: Row(
                  //             children: [
                  //               HoverButton(
                  //                   text: 'Facebook',
                  //                   onPressed: () {
                  //                     launchUrl(facebookLink);
                  //                   },
                  //                   shape: BoxShape.circle,
                  //                   isImageButton: true,
                  //                   image: 'assets/images/facebook.svg'),
                  //               wspace10,
                  //               HoverButton(
                  //                 text: 'Location',
                  //                 onPressed: () {
                  //                   launchUrl(googleBusinessLink);
                  //                 },
                  //                 shape: BoxShape.circle,
                  //                 isImageButton: true,
                  //                 image: 'assets/images/google_my_business.svg',
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Align(
                  //           alignment: Alignment.centerRight,
                  //           child: Expanded(
                  //             child: Row(
                  //               children: [
                  //                 Text(
                  //                   'Designed BY',
                  //                   style: TextStyle(
                  //                       color:
                  //                           Theme.of(context).colorScheme.onPrimary),
                  //                 ),
                  //                 TextButton(
                  //                     onPressed: () {
                  //                       launchUrl(ssiWebsiteLink);
                  //                     },
                  //                     child: Text('SSI',
                  //                         style: TextStyle(
                  //                           color:
                  //                               Theme.of(context).colorScheme.primary,
                  //                           fontSize: 20,
                  //                           fontWeight: FontWeight.bold,
                  //                           decoration: TextDecoration.underline,
                  //                           decorationColor: Theme.of(context)
                  //                               .colorScheme
                  //                               .onPrimary,
                  //                         ))),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              )),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String text;
  final bool isClicked;
  final VoidCallback onTap;

  const NavBarItem({
    super.key,
    required this.text,
    required this.isClicked,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isClicked
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}

class HoverableListItem extends StatefulWidget {
  final String title;

  const HoverableListItem({
    super.key,
    required this.title,
  });

  @override
  _HoverableListItemState createState() => _HoverableListItemState();
}

class _HoverableListItemState extends State<HoverableListItem> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovering = false;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        color: _isHovering ? Colors.grey.shade300 : Colors.transparent,
        child: Text(
          widget.title,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: _isHovering
                ? Theme.of(context).colorScheme.secondary
                : Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
