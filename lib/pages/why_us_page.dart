// import 'package:flutter/material.dart';
// import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';

// class WhyUsPage extends StatelessWidget {
//   WhyUsPage({super.key});
//   final List<String> images = [
//     'assets/images/peace_of_mind.png',
//     // 'assets/images/locally_owned_business.png',
//     // 'assets/images/full_day.png',
//     // 'assets/images/education.png'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(60.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'What makes us different',
//             style: TextStyle(
//               fontSize: 36,
//               fontWeight: FontWeight.bold,
//               color: Theme.of(context).colorScheme.primary,
//             ),
//           ),
//           space20,
//           SizedBox(
//             height: 500,
//             child: GridView.builder(
//               shrinkWrap: true,
//               scrollDirection: Axis.vertical,
//               // physics: const NeverScrollableScrollPhysics(),
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: MediaQuery.of(context).size.width < 600 ? 1 : 4,
//                 childAspectRatio: 1,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing:
//                     MediaQuery.of(context).size.width < 600 ? 50 : 10,
//               ),
//               itemCount: images.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   padding: const EdgeInsets.all(10),
//                   child: Column(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius:
//                               const BorderRadius.all(Radius.circular(16)),
//                           image: DecorationImage(
//                             image: AssetImage(images[index]),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       space10, // Space between image and text
//                       Text(
//                         'Peace of Mind Protection', // Replace with actual text
//                         style: TextStyle(
//                           color: Theme.of(context).colorScheme.secondary,
//                           fontSize: 16,
//                           fontWeight: FontWeight.normal,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                       space10, // Adjust spacing as needed
//                       Text(
//                         'Safeguarding Your Home and Health', // Replace with actual text
//                         style: TextStyle(
//                           color: Theme.of(context).colorScheme.secondary,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                       space10,
//                       Text(
//                         "We understand that your home is your sanctuary. It’s a place where you should feel safe, comfortable, and secure. That’s why we are dedicated to providing comprehensive pest control services that not only eliminate unwanted pests but also ensure they don’t return. Our mission is to protect your home and health from the nuisances and dangers posed by pests, giving you true peace of mind.", // Replace with actual text
//                         style: TextStyle(
//                           color: Theme.of(context).colorScheme.secondary,
//                           fontSize: 14,
//                           fontWeight: FontWeight.normal,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';

class WhyUsPage extends StatelessWidget {
  WhyUsPage({super.key});

  final List<Map<String, String>> items = [
    {
      'image': 'assets/images/peace_of_mind.png',
      'title': 'Peace of Mind Protection',
      'subtitle': 'Safeguarding Your Home and Health',
      'description':
          "We understand that your home is your sanctuary. It’s a place where you should feel safe, comfortable, and secure. That’s why we are dedicated to providing comprehensive pest control services that not only eliminate unwanted pests but also ensure they don’t return. Our mission is to protect your home and health from the nuisances and dangers posed by pests, giving you true peace of mind."
    },
    {
      'image': 'assets/images/locally_owned_business.png',
      'title': 'Locally Owned Business',
      'subtitle': 'Your Neighborhood Experts in Pest Control',
      'description':
          "Welcome to WestGate Pest Control, your locally owned and operated pest control service. We take pride in being a part of the community we serve, providing our neighbors with reliable, effective, and affordable pest control solutions. Our deep roots in the area allow us to understand the unique challenges faced by homeowners and businesses in our community, ensuring tailored services that truly meet your needs."
    },
    {
      'image': 'assets/images/full_day.png',
      'title': '24/7, 365 days services',
      'subtitle': 'Prompt and Reliable Pest Control Whenever You Need It',
      'description':
          "At WestGate Pest Control, Our specialist pest control services operate 24/7, 365 days a year. We offer thorough and professional pest control solutions in both domestic and commercial environments. Our pest technicians have the necessary qualifications to deal with all manner of pest problems and we will not leave your property unless you are completely satisfied with our work."
    },
    {
      'image': 'assets/images/education.png',
      'title': 'We Value Education',
      'subtitle': 'Empowering Our Community Through Knowledge',
      'description':
          "At WestGate Pest Control, we believe that education is a crucial component of effective pest control. Our commitment to educating our clients sets us apart, providing you with the knowledge and tools needed to maintain a pest-free environment. We’re not just here to eliminate pests—we’re here to empower you to prevent future infestations through understanding and awareness."
    },
  ];

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    return Container(
      padding: const EdgeInsets.all(60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          space40,
          space20,
          Text(
            'What makes us different',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          space20,
          if (isMobile)
            Column(
              children: items.map((item) => buildItem(context, item)).toList(),
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: items.map((item) => Expanded(child: buildItem(context, item))).toList(),
            ),
        ],
      ),
    );
  }

  Widget buildItem(BuildContext context, Map<String, String> item) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              image: DecorationImage(
                image: AssetImage(item['image']!),
                fit: BoxFit.contain,
              ),
            ),
          ),
          space10,
          Text(
            item['title']!,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
          space10,
          Text(
            item['subtitle']!,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          space10,
          Text(
            item['description']!,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
          space20,
        ],
      ),
    );
  }
}
