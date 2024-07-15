// import 'package:flutter/material.dart';
// import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';
// import 'package:westgate_pest_control_website_/widgets/hover_button.dart';

// class AboutUsPage extends StatelessWidget {
//   const AboutUsPage({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(60.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Pest Control Services',
//                   style: TextStyle(
//                     fontSize: 36,
//                     fontWeight: FontWeight.bold,
//                     color: Theme.of(context).colorScheme.primary,
//                   ),
//                 ),
//                 space20,
//                 Text(
//                   "We have a wealth of experience under our belts, which means that we know the best ways to help you protect every element of your home or business. No matter the pest you’re facing, we are certain we’ve seen it before, and that we’ll be able to help out completely. When dealing with pest control, Melbourne is a large and complex city. Thankfully, we have the experience that many other pest control companies lack, so we’re sure we’d be able to help you out. As one of the leading companies offering pest control in Melbourne, we have to work in a number of distinct and unique environments. From flats to offices, we’re familiar with the intricacies of residential pest control in a range of different spaces, as well as commercial pest control services, too.",
//                   maxLines: 8,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.normal,
//                     color: Theme.of(context).colorScheme.secondary,
//                   ),
//                 ),
//                 space20,
//                 Row(
//                   children: [
//                     HoverButton(
//                       text: 'CONTACT US',
//                       onPressed: () {},
//                     ),
//                     wspace20,
//                     HoverButton(
//                       text: 'MESSAGE US',
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 700,
//             width: 700,
//             child: Image.asset(
//               'assets/images/about_us_image.png',
//               width: 400, // Adjust width as needed
//               height: 400, // Adjust height as needed
//               fit: BoxFit.cover,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';
import 'package:westgate_pest_control_website_/widgets/hover_button.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1200) {
          // Mobile layout
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pest Control Services',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                space20,
                Text(
                  "We have a wealth of experience under our belts, which means that we know the best ways to help you protect every element of your home or business. No matter the pest you’re facing, we are certain we’ve seen it before, and that we’ll be able to help out completely. When dealing with pest control, Melbourne is a large and complex city. Thankfully, we have the experience that many other pest control companies lack, so we’re sure we’d be able to help you out. As one of the leading companies offering pest control in Melbourne, we have to work in a number of distinct and unique environments. From flats to offices, we’re familiar with the intricacies of residential pest control in a range of different spaces, as well as commercial pest control services, too.",
                  maxLines: 8,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                space20,
                Column(
                  children: [
                    HoverButton(
                      text: 'CONTACT US',
                      onPressed: () {},
                      shape: BoxShape.rectangle,
                      isImageButton: false,
                      image:'',
                    ),
                    const SizedBox(height: 20),
                    HoverButton(
                      text: 'MESSAGE US',
                      onPressed: () {},
                      shape: BoxShape.rectangle,
                      isImageButton: true,
                      image:'',
                    ),
                  ],
                ),
                space20,
                SizedBox(
                  height: 600,
                  width: 600,
                  child: Image.asset(
                    'assets/images/about_us_image.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          );
        } else {
          // Desktop layout
          return Padding(
            padding: const EdgeInsets.all(60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pest Control Services',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      space20,
                      Text(
                        "We have a wealth of experience under our belts, which means that we know the best ways to help you protect every element of your home or business. No matter the pest you’re facing, we are certain we’ve seen it before, and that we’ll be able to help out completely. When dealing with pest control, Melbourne is a large and complex city. Thankfully, we have the experience that many other pest control companies lack, so we’re sure we’d be able to help you out. As one of the leading companies offering pest control in Melbourne, we have to work in a number of distinct and unique environments. From flats to offices, we’re familiar with the intricacies of residential pest control in a range of different spaces, as well as commercial pest control services, too.",
                        maxLines: 8,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      space20,
                      Row(
                        children: [
                          HoverButton(
                            text: 'CONTACT US',
                            onPressed: () {},
                            shape: BoxShape.rectangle,
                            isImageButton: false,
                            image:'',
                          ),
                          wspace20,
                          HoverButton(
                            text: 'MESSAGE US',
                            onPressed: () {},
                            shape: BoxShape.rectangle
                            ,isImageButton: false,
                            image:'',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 700,
                  width: 700,
                  child: Image.asset(
                    'assets/images/about_us_image.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
