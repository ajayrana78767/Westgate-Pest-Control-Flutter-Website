import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';
import 'package:westgate_pest_control_website_/widgets/custom_textfield.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60),
      child: Column(
        children: [
          Text(
            'Contact Us',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          space40,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get a Free Quote!',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    space20,
                    const Flexible(
                      // Use Flexible instead of Expanded
                      child: CustomTextfield(
                        maxLines: 1,
                        minLines: 1,
                        hintText: 'Name',
                      ),
                    ),
                    space20,
                    const Flexible(
                      // Use Flexible instead of Expanded
                      child: CustomTextfield(
                        maxLines: 1,
                        minLines: 1,
                        hintText: 'Email*',
                      ),
                    ),
                    space20,
                    const Flexible(
                      // Use Flexible instead of Expanded
                      child: CustomTextfield(
                        maxLines: 1,
                        minLines: 1,
                        hintText: 'Phone',
                      ),
                    ),
                    space20,
                    const Flexible(
                      // Use Flexible instead of Expanded
                      child: CustomTextfield(
                        maxLines: 1,
                        minLines: 1,
                        hintText: 'Address(Street, City, Zip Code)',
                      ),
                    ),
                    space20,
                    const Flexible(
                      // Use Flexible instead of Expanded
                      child: CustomTextfield(
                        maxLines: 4,
                        minLines: 4,
                        hintText:
                            "Let us know the details of what you are looking for, and we'll contact you with a quote.",
                      ),
                    ),
                    space20,
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          border: Border.all(
                            color: Theme.of(context)
                                .colorScheme
                                .primary, // Border color when not hovered
                            width: .5, // Border width
                          ),
                        ),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              wspace20,
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Set mainAxisSize
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Better yet, see us in person!',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    space20,
                    Text(
                      'We stay in constant communication with our customers until the job is done. To get a free quote, or if you have questions or special requests, just drop us a line.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    space40,
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .secondary, // Default background color
                        borderRadius:
                            BorderRadius.circular(30.0), // Border radius
                      ),
                      child: ListTile(
                        onTap: () {},
                        leading: SizedBox(
                          height: 35,
                          width: 35,
                          child: SvgPicture.asset(
                            'assets/images/whatsapp-svgrepo-com.svg',
                          ),
                        ),
                        title: Text(
                          'Message us on WhatsApp',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                    space40,
                    Text(
                      'Westgate Pest Control',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          space20,
          Container(
            height: 500,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/map.png'),
                    fit: BoxFit.cover)),
          ),
          space40,
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Expanded(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             'Westgate Pest Control',
          //             style: TextStyle(
          //                 color: Theme.of(context).colorScheme.secondary,
          //                 fontSize: 24,
          //                 fontWeight: FontWeight.bold),
          //           ),
          //           Container(
          //             height: 150,
          //             width: 150, // Adjust width as needed
          //             decoration: const BoxDecoration(
          //               image: DecorationImage(
          //                 image: AssetImage('assets/images/Logo.png'),
          //                 fit: BoxFit.contain,
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Expanded(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             'About',
          //             style: TextStyle(
          //                 color: Theme.of(context).colorScheme.secondary,
          //                 fontSize: 24,
          //                 fontWeight: FontWeight.bold),
          //           ),
          //           space10,
          //           const SizedBox(
          //             height: 1,
          //             width: 150, // Adjust width as needed
          //             child:
          //                 Divider(color: Colors.grey), // Adjust color as needed
          //           ),
          //           space10,
          //           const Text(
          //             '24/7 Pest Control Services in Melbourne, VIC, Australia, Victoria and Surrounding Areas.',
          //             textAlign: TextAlign.start,
          //             maxLines: 3,
          //           ),
          //         ],
          //       ),
          //     ),
          //     Expanded(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             'Links',
          //             style: TextStyle(
          //                 color: Theme.of(context).colorScheme.secondary,
          //                 fontSize: 24,
          //                 fontWeight: FontWeight.bold),
          //           ),
          //           space10,
          //           const SizedBox(
          //             height: 1,
          //             width: 150, // Adjust width as needed
          //             child:
          //                 Divider(color: Colors.grey), // Adjust color as needed
          //           ),
          //           space10,
          //           TextButton(onPressed: () {}, child: const Text('Home')),
          //           TextButton(onPressed: () {}, child: const Text('About')),
          //           TextButton(onPressed: () {}, child: const Text('Services')),
          //           TextButton(onPressed: () {}, child: const Text('Why Us')),
          //           TextButton(onPressed: () {}, child: const Text('Faq')),
          //           TextButton(onPressed: () {}, child: const Text('Contact')),
          //         ],
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 50,
          //       width: 1, // Adjust width as needed
          //       child: Divider(color: Colors.grey), // Adjust color as needed
          //     ),
          //     Expanded(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             'Contact',
          //             style: TextStyle(
          //                 color: Theme.of(context).colorScheme.secondary,
          //                 fontSize: 24,
          //                 fontWeight: FontWeight.bold),
          //           ),
          //           space10,
          //           const SizedBox(
          //             height: 1,
          //             width: 150, // Adjust width as needed
          //             child:
          //                 Divider(color: Colors.grey), // Adjust color as needed
          //           ),
          //           space10,
          //           const Text(
          //             "+61 426 040 040\nMelbourne, VIC, Australia, Victoria\ninfo@westgatepestcontrol.com.au",
          //             textAlign: TextAlign.start,
          //             maxLines: 3,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class ContactUsPage extends StatelessWidget {
  

//   ContactUsPage({Key? key}) : super(key: key);

//   // Define keys for each section
//   final GlobalKey homeKey = GlobalKey();
//   final GlobalKey aboutKey = GlobalKey();
//   final GlobalKey servicesKey = GlobalKey();
//   final GlobalKey whyUsKey = GlobalKey();
//   final GlobalKey galleryKey = GlobalKey();
//   final GlobalKey faqKey = GlobalKey();
//   final GlobalKey contactKey = GlobalKey();

//   // Method to scroll to a section based on its key
//   void _scrollToSection(GlobalKey key) {
//     Scrollable.ensureVisible(
//       key.currentContext!,
//       duration: const Duration(seconds: 1),
//       curve: Curves.easeInOut,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(60),
//       child: SingleChildScrollView(
//         controller: ScrollController(), // Initialize ScrollController
//         child: Column(
//           children: [
//             Text(
//               'Contact Us',
//               style: TextStyle(
//                 fontSize: 36,
//                 fontWeight: FontWeight.bold,
//                 color: Theme.of(context).colorScheme.primary,
//               ),
//             ),
//             const SizedBox(height: 40),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Get a Free Quote!',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w600,
//                           color: Theme.of(context).colorScheme.secondary,
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       // Add your text fields for name, email, phone, etc.
//                       // Example:
//                       // CustomTextfield(
//                       //   maxLines: 1,
//                       //   minLines: 1,
//                       //   hintText: 'Name',
//                       // ),
//                       // SizedBox(height: 20),
//                       // CustomTextfield(
//                       //   maxLines: 1,
//                       //   minLines: 1,
//                       //   hintText: 'Email*',
//                       // ),
//                       // SizedBox(height: 20),
//                       // Add more text fields as needed
//                       InkWell(
//                         onTap: () {
//                           // Handle form submission or other action
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 24, vertical: 12),
//                           decoration: BoxDecoration(
//                             color: Theme.of(context).colorScheme.primary,
//                             border: Border.all(
//                               color: Theme.of(context).colorScheme.primary,
//                               width: 0.5,
//                             ),
//                           ),
//                           child: Text(
//                             'Submit',
//                             style: TextStyle(
//                               color: Theme.of(context).colorScheme.onPrimary,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(width: 20),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Better yet, see us in person!',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w600,
//                           color: Theme.of(context).colorScheme.secondary,
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       Text(
//                         'We stay in constant communication with our customers until the job is done. To get a free quote, or if you have questions or special requests, just drop us a line.',
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Theme.of(context).colorScheme.secondary,
//                         ),
//                       ),
//                       const SizedBox(height: 40),
//                       Container(
//                         padding: const EdgeInsets.all(4),
//                         decoration: BoxDecoration(
//                           color: Theme.of(context).colorScheme.secondary,
//                           borderRadius: BorderRadius.circular(30.0),
//                         ),
//                         child: ListTile(
//                           onTap: () {
//                             // Handle WhatsApp message action
//                           },
//                           leading: SizedBox(
//                             height: 35,
//                             width: 35,
//                             child: Image.asset(
//                               'assets/images/whatsapp-svgrepo-com.svg',
//                             ),
//                           ),
//                           title: Text(
//                             'Message us on WhatsApp',
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Theme.of(context).colorScheme.onPrimary,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 40),
//                       Text(
//                         'Westgate Pest Control',
//                         style: TextStyle(
//                           fontSize: 24,
//                           color: Theme.of(context).colorScheme.secondary,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Container(
//               height: 500,
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/map.png'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 40),
        
//           ],
//         ),
//       ),
//     );
//   }
// }
