// // ignore_for_file: use_build_context_synchronously, avoid_print

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';
// import 'package:westgate_pest_control_website_/widgets/custom_textfield.dart';
// import 'package:emailjs/emailjs.dart' as emailjs;

// class ContactUsPage extends StatefulWidget {
//   const ContactUsPage({super.key});

//   @override
//   State<ContactUsPage> createState() => _ContactUsPageState();
// }

// class _ContactUsPageState extends State<ContactUsPage> {
//   final Uri whatsappLink = Uri.parse(
//       'https://api.whatsapp.com/send/?phone=61426040040&text&type=phone_number&app_absent=0');

//   final TextEditingController nameController = TextEditingController();

//   final TextEditingController emailController = TextEditingController();

//   final TextEditingController phoneController = TextEditingController();

//   final TextEditingController addressController = TextEditingController();

//   final TextEditingController descriptionController = TextEditingController();
//   @override
//   void initState() {
//     super.initState();
//     // Initialize controllers or other setup if needed
//   }

//   @override
//   void dispose() {
//     // Dispose controllers
//     nameController.dispose();
//     emailController.dispose();
//     phoneController.dispose();
//     addressController.dispose();
//     descriptionController.dispose();
//     super.dispose();
//   }

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   String? validateEmail(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter your email';
//     }
//     final RegExp emailRegex = RegExp(
//         r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$');
//     if (!emailRegex.hasMatch(value)) {
//       return 'Enter a valid email address';
//     }
//     return null;
//   }

//   String? validatePhone(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter your phone number';
//     }
//     final RegExp phoneRegex = RegExp(r'^\+?[0-9]{10,15}$');
//     if (!phoneRegex.hasMatch(value)) {
//       return 'Enter a valid phone number';
//     }
//     return null;
//   }

//   String? validateNotEmpty(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'This field cannot be empty';
//     }
//     return null;
//   }

//   void _sendEmail() async {
//     if (_formKey.currentState?.validate() ?? false) {
//       // Initialize templateParams here
//       Map<String, dynamic> templateParams = {
//         'name': nameController.text,
//         'email': emailController.text,
//         'phone': phoneController.text,
//         'address': addressController.text,
//         'description': descriptionController.text,
//       };

//       try {
//         await emailjs.send(
//           'service_w8fiqiu',
//           'template_4u05yfv',
//           templateParams,
//           const emailjs.Options(
//             publicKey: 'FEV2kQPapXERNBvrt',
//             privateKey: 'Fu1sHC7AoN6OSqHi3luWR',
//             limitRate: emailjs.LimitRate(
//               id: 'app',
//               throttle: 10000,
//             ),
//           ),
//         );

//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Message Sent Successfully')),
//         );
//         setState(() {
//           nameController.text = '';
//           emailController.text = '';
//           phoneController.text = '';
//           addressController.text = '';
//           descriptionController.text = '';
//         });
//       } catch (error) {
//         if (error is emailjs.EmailJSResponseStatus) {
//           print('ERROR... $error');
//         }
//         print(error.toString());
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text(error.toString())),
//         );
//       }
//     } else {
//       print('Form is invalid. Cannot send email.');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(60),
//       child: Column(
//         children: [
//           Text(
//             'Contact Us',
//             style: TextStyle(
//               fontSize: 36,
//               fontWeight: FontWeight.bold,
//               color: Theme.of(context).colorScheme.primary,
//             ),
//           ),
//           space40,
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: Form(
//                   key: _formKey,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Get a Free Quote!',
//                         style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w600,
//                             color: Theme.of(context).colorScheme.secondary),
//                       ),
//                       const SizedBox(height: 20),
//                       CustomTextfield(
//                         controller: nameController,
//                         maxLines: 1,
//                         minLines: 1,
//                         hintText: 'Name',
//                         validator: validateNotEmpty,
//                       ),
//                       const SizedBox(height: 20),
//                       CustomTextfield(
//                         controller: emailController,
//                         maxLines: 1,
//                         minLines: 1,
//                         hintText: 'Email*',
//                         validator: validateEmail,
//                       ),
//                       const SizedBox(height: 20),
//                       CustomTextfield(
//                         controller: phoneController,
//                         maxLines: 1,
//                         minLines: 1,
//                         hintText: 'Phone',
//                         validator: validatePhone,
//                       ),
//                       const SizedBox(height: 20),
//                       CustomTextfield(
//                         controller: addressController,
//                         maxLines: 1,
//                         minLines: 1,
//                         hintText: 'Address (Street, City, Zip Code)',
//                         validator: validateNotEmpty,
//                       ),
//                       const SizedBox(height: 20),
//                       CustomTextfield(
//                         controller: descriptionController,
//                         maxLines: 4,
//                         minLines: 4,
//                         hintText:
//                             "Let us know the details of what you are looking for, and we'll contact you with a quote.",
//                         validator: validateNotEmpty,
//                       ),
//                       const SizedBox(height: 20),
//                       InkWell(
//                         onTap: _sendEmail,
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 24, vertical: 12),
//                           decoration: BoxDecoration(
//                             color: Theme.of(context).colorScheme.primary,
//                             border: Border.all(
//                               color: Theme.of(context).colorScheme.primary,
//                               width: .5,
//                             ),
//                           ),
//                           child: Text(
//                             'Submit',
//                             style: TextStyle(
//                                 color: Theme.of(context).colorScheme.onPrimary,
//                                 fontSize: 16),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               wspace20,
//               Expanded(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min, // Set mainAxisSize
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Better yet, see us in person!',
//                       style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w600,
//                           color: Theme.of(context).colorScheme.secondary),
//                     ),
//                     space20,
//                     Text(
//                       'We stay in constant communication with our customers until the job is done. To get a free quote, or if you have questions or special requests, just drop us a line.',
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.normal,
//                           color: Theme.of(context).colorScheme.secondary),
//                     ),
//                     space40,
//                     Container(
//                       padding: const EdgeInsets.all(4),
//                       decoration: BoxDecoration(
//                         color: Theme.of(context)
//                             .colorScheme
//                             .secondary, // Default background color
//                         borderRadius:
//                             BorderRadius.circular(30.0), // Border radius
//                       ),
//                       child: ListTile(
//                         onTap: () {
//                           launchUrl(whatsappLink);
//                         },
//                         leading: SizedBox(
//                           height: 35,
//                           width: 35,
//                           child: SvgPicture.asset(
//                             'assets/images/whatsapp-svgrepo-com.svg',
//                           ),
//                         ),
//                         title: Text(
//                           'Message us on WhatsApp',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal,
//                             color: Theme.of(context).colorScheme.onPrimary,
//                           ),
//                         ),
//                       ),
//                     ),
//                     space40,
//                     Text(
//                       'Westgate Pest Control',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.normal,
//                         color: Theme.of(context).colorScheme.secondary,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           space20,
//           Container(
//             height: 500,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage('assets/images/map.png'),
//                     fit: BoxFit.cover)),
//           ),
//           space40,
//         ],
//       ),
//     );
//   }
// }
