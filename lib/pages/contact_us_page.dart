import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';
import 'package:westgate_pest_control_website_/widgets/custom_textfield.dart';
import 'package:emailjs/emailjs.dart' as emailjs;

class ContactUsPage extends StatefulWidget {
  ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final Uri whatsappLink = Uri.parse(
      'https://api.whatsapp.com/send/?phone=61426040040&text&type=phone_number&app_absent=0');

  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController addressController = TextEditingController();

  final TextEditingController descriptionController = TextEditingController();
  @override
  void initState() {
    super.initState();
    // Initialize controllers or other setup if needed
  }

  @override
  void dispose() {
    // Dispose controllers
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final RegExp emailRegex = RegExp(
        r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    final RegExp phoneRegex = RegExp(r'^\+?[0-9]{10,15}$');
    if (!phoneRegex.hasMatch(value)) {
      return 'Enter a valid phone number';
    }
    return null;
  }

  String? validateNotEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field cannot be empty';
    }
    return null;
  }

  void _sendEmail() async {
    if (_formKey.currentState?.validate() ?? false) {
      // Initialize templateParams here
      Map<String, dynamic> templateParams = {
        'name': nameController.text,
        'email': emailController.text,
        'phone': phoneController.text,
        'address': addressController.text,
        'description': descriptionController.text,
      };

      print(nameController.text);
      print(emailController.text);
      print(phoneController.text);
      print(addressController.text);
      print(descriptionController.text);

      try {
        await emailjs.send(
          'service_w8fiqiu',
          'template_4u05yfv',
          templateParams,
          const emailjs.Options(
            publicKey: 'FEV2kQPapXERNBvrt',
            privateKey: 'Fu1sHC7AoN6OSqHi3luWR',
            limitRate: emailjs.LimitRate(
              id: 'app',
              throttle: 10000,
            ),
          ),
        );
        print('SUCCESS!');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Message Sent Successfully')),
        );
        setState(() {
          nameController.text = '';
          emailController.text = '';
          phoneController.text = '';
          addressController.text = '';
          descriptionController.text = '';
        });
      } catch (error) {
        if (error is emailjs.EmailJSResponseStatus) {
          print('ERROR... $error');
        }
        print(error.toString());
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.toString())),
        );
      }
    } else {
      print('Form is invalid. Cannot send email.');
    }
  }

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
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get a Free Quote!',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                      const SizedBox(height: 20),
                      CustomTextfield(
                        controller: nameController,
                        maxLines: 1,
                        minLines: 1,
                        hintText: 'Name',
                        validator: validateNotEmpty,
                      ),
                      const SizedBox(height: 20),
                      CustomTextfield(
                        controller: emailController,
                        maxLines: 1,
                        minLines: 1,
                        hintText: 'Email*',
                        validator: validateEmail,
                      ),
                      const SizedBox(height: 20),
                      CustomTextfield(
                        controller: phoneController,
                        maxLines: 1,
                        minLines: 1,
                        hintText: 'Phone',
                        validator: validatePhone,
                      ),
                      const SizedBox(height: 20),
                      CustomTextfield(
                        controller: addressController,
                        maxLines: 1,
                        minLines: 1,
                        hintText: 'Address (Street, City, Zip Code)',
                        validator: validateNotEmpty,
                      ),
                      const SizedBox(height: 20),
                      CustomTextfield(
                        controller: descriptionController,
                        maxLines: 4,
                        minLines: 4,
                        hintText:
                            "Let us know the details of what you are looking for, and we'll contact you with a quote.",
                        validator: validateNotEmpty,
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: _sendEmail,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                              width: .5,
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
                        onTap: () {
                          launchUrl(whatsappLink);
                        },
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
