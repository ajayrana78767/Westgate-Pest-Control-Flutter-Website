// import 'package:flutter/material.dart';
// import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';

// class FaqPage extends StatelessWidget {
//   const FaqPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(60.0),
//       child: Container(
//         height: 850,
//         width: double.infinity,
//         color: Theme.of(context).colorScheme.primary,
//         child: Row(
//           children: [
//             Expanded(
//               child: Container(
//                 height: 850,
//                 decoration: const BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage('assets/images/gallery_image_3.jpeg'),
//                         fit: BoxFit.cover)),
//               ),
//             ),
//             wspace20,
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   space20,
//                   Text(
//                     'Journey to a Pest-Free Home',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Theme.of(context).colorScheme.onPrimary,
//                     ),
//                   ),

//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CircleAvatar(
//                           backgroundColor: Theme.of(context)
//                               .colorScheme
//                               .onPrimary
//                               .withOpacity(.25),
//                           child: const Text(
//                             '1',
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         wspace10,
//                         Expanded(
//                           child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'What should I expect from a pest control service and what areas do you treat for pests?',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   color:
//                                       Theme.of(context).colorScheme.onPrimary,
//                                 ),
//                               ),
//                               space10,
//                               Text(
//                                 'During a General Pest treatment our fully trained and licensed pest control technician will apply pest control products throughout the entire property, which involves dusting of the roof space area and sub-floor area, and a full internal and external spray. The entire property includes window frames, doorframes, fence lines, garages, sheds, and outbuildings. The service will take approximately 60-90 min depending on the size of the property.',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.normal,
//                                   color:
//                                       Theme.of(context).colorScheme.onPrimary,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CircleAvatar(
//                           backgroundColor: Theme.of(context)
//                               .colorScheme
//                               .onPrimary
//                               .withOpacity(.25),
//                           child: const Text(
//                             '2',
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         wspace10,
//                         Expanded(
//                           child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'How long do we have to vacate?',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   color:
//                                       Theme.of(context).colorScheme.onPrimary,
//                                 ),
//                               ),
//                               space10,
//                               Text(
//                                 "The vacating period will differ depending on the type of treatment you're having. A rodent treatment incurs no vacating period, in the case of a general pest treatment, e.g., spiders, ants, and other crawling insects, the vacating period is between 2-4 hours.",
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.normal,
//                                   color:
//                                       Theme.of(context).colorScheme.onPrimary,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CircleAvatar(
//                           backgroundColor: Theme.of(context)
//                               .colorScheme
//                               .onPrimary
//                               .withOpacity(.25),
//                           child: const Text(
//                             '3',
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         wspace10,
//                         Expanded(
//                           child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Efficient Pest Removal',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   color:
//                                       Theme.of(context).colorScheme.onPrimary,
//                                 ),
//                               ),
//                               space10,
//                               Text("All of the pest control products we use as part of our services are approved by the Australian Environmental Pest Management Association. All chemicals we use are designed to affect pests only they are very safe, in particular the chemicals used internally. Externally, the chemicals are slightly stronger as it's the source area of where the pests appear.",
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.normal,
//                                   color:
//                                       Theme.of(context).colorScheme.onPrimary,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CircleAvatar(
//                           backgroundColor: Theme.of(context)
//                               .colorScheme
//                               .onPrimary
//                               .withOpacity(.25),
//                           child: const Text(
//                             '4',
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         wspace10,
//                         Expanded(
//                           child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Do I need to take my pets away?',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   color:
//                                       Theme.of(context).colorScheme.onPrimary,
//                                 ),
//                               ),
//                               space10,
//                               Text(
//                                 'It is advisable any pets should be removed at least two hours or until the formulation are dry. Remove food and water bowls prior to treatment. Fish tanks and bird cages should be covered with a sheet or towel.',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.normal,
//                                   color:
//                                       Theme.of(context).colorScheme.onPrimary,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CircleAvatar(
//                           backgroundColor: Theme.of(context)
//                               .colorScheme
//                               .onPrimary
//                               .withOpacity(.25),
//                           child: const Text(
//                             '5',
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         wspace10,
//                         Expanded(
//                           child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'How often should I have my house treated?',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   color:
//                                       Theme.of(context).colorScheme.onPrimary,
//                                 ),
//                               ),
//                               space10,
//                               Text(
//                                 'We recommend that you have your home treated for ants and spiders every 12 months in order to keep your property safe. Some customers choose to have a treatment every 6 months to ensure complete protection.',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.normal,
//                                   color:
//                                       Theme.of(context).colorScheme.onPrimary,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   // ListTile(
//                   //   leading: CircleAvatar(
//                   //     backgroundColor: Theme.of(context)
//                   //         .colorScheme
//                   //         .onPrimary
//                   //         .withOpacity(.25),
//                   //     child: const Text(
//                   //       '1',
//                   //       style: TextStyle(
//                   //           fontSize: 20, fontWeight: FontWeight.bold),
//                   //     ),
//                   //   ),
//                   //   title: Text(
//                   //     'What should I expect from a pest control service and what areas do you treat for pests?',
//                   //     style: TextStyle(
//                   //       fontSize: 16,
//                   //       fontWeight: FontWeight.w600,
//                   //       color: Theme.of(context).colorScheme.onPrimary,
//                   //     ),
//                   //   ),
//                   //   subtitle: Text(
//                   //     'During a General Pest treatment our fully trained and licensed pest control technician will apply pest control products throughout the entire property, which involves dusting of the roof space area and sub-floor area, and a full internal and external spray. The entire property includes window frames, doorframes, fence lines, garages, sheds, and outbuildings. The service will take approximately 60-90 min depending on the size of the property.',
//                   //     style: TextStyle(
//                   //       fontSize: 14,
//                   //       fontWeight: FontWeight.normal,
//                   //       color: Theme.of(context).colorScheme.onPrimary,
//                   //     ),
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    double screenWidth = MediaQuery.of(context).size.width;
    double containerHeight =
        isPortrait ? 850 : 600; // Adjust height based on orientation

    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Container(
        height: containerHeight,
        width: double.infinity,
        color: Theme.of(context).colorScheme.primary,
        child: isPortrait
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: containerHeight,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/gallery_image_3.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  space20,
                  Text(
                    'Journey to a Pest-Free Home',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  space20,
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          buildFaqRow(
                              context,
                              '1',
                              'What should I expect from a pest control service and what areas do you treat for pests?',
                              'During a General Pest treatment our fully trained and licensed pest control technician will apply pest control products throughout the entire property, which involves dusting of the roof space area and sub-floor area, and a full internal and external spray. The entire property includes window frames, doorframes, fence lines, garages, sheds, and outbuildings. The service will take approximately 60-90 min depending on the size of the property.'),
                          space20,
                          buildFaqRow(
                              context,
                              '2',
                              'How long do we have to vacate?',
                              "The vacating period will differ depending on the type of treatment you're having. A rodent treatment incurs no vacating period, in the case of a general pest treatment, e.g., spiders, ants, and other crawling insects, the vacating period is between 2-4 hours."),
                          space20,
                          buildFaqRow(context, '3', 'Efficient Pest Removal',
                              "All of the pest control products we use as part of our services are approved by the Australian Environmental Pest Management Association. All chemicals we use are designed to affect pests only they are very safe, in particular the chemicals used internally. Externally, the chemicals are slightly stronger as it's the source area of where the pests appear."),
                          space20,
                          buildFaqRow(
                              context,
                              '4',
                              'Do I need to take my pets away?',
                              'It is advisable any pets should be removed at least two hours or until the formulation are dry. Remove food and water bowls prior to treatment. Fish tanks and bird cages should be covered with a sheet or towel.'),
                          space20,
                          buildFaqRow(
                              context,
                              '5',
                              'How often should I have my house treated?',
                              'We recommend that you have your home treated for ants and spiders every 12 months in order to keep your property safe. Some customers choose to have a treatment every 6 months to ensure complete protection.'),
                          space20,
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Row(
                children: [
                  Expanded(
                    child: Container(
                      height: containerHeight,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/gallery_image_3.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  wspace20,
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          space20,
                          Text(
                            'Journey to a Pest-Free Home',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          space20,
                          buildFaqColumn(
                              context,
                              '1',
                              'What should I expect from a pest control service and what areas do you treat for pests?',
                              'During a General Pest treatment our fully trained and licensed pest control technician will apply pest control products throughout the entire property, which involves dusting of the roof space area and sub-floor area, and a full internal and external spray. The entire property includes window frames, doorframes, fence lines, garages, sheds, and outbuildings. The service will take approximately 60-90 min depending on the size of the property.'),
                          space20,
                          buildFaqColumn(
                              context,
                              '2',
                              'How long do we have to vacate?',
                              "The vacating period will differ depending on the type of treatment you're having. A rodent treatment incurs no vacating period, in the case of a general pest treatment, e.g., spiders, ants, and other crawling insects, the vacating period is between 2-4 hours."),
                          space20,
                          buildFaqColumn(context, '3', 'Efficient Pest Removal',
                              "All of the pest control products we use as part of our services are approved by the Australian Environmental Pest Management Association. All chemicals we use are designed to affect pests only they are very safe, in particular the chemicals used internally. Externally, the chemicals are slightly stronger as it's the source area of where the pests appear."),
                          space20,
                          buildFaqColumn(
                              context,
                              '4',
                              'Do I need to take my pets away?',
                              'It is advisable any pets should be removed at least two hours or until the formulation are dry. Remove food and water bowls prior to treatment. Fish tanks and bird cages should be covered with a sheet or towel.'),
                          space20,
                          buildFaqColumn(
                              context,
                              '5',
                              'How often should I have my house treated?',
                              'We recommend that you have your home treated for ants and spiders every 12 months in order to keep your property safe. Some customers choose to have a treatment every 6 months to ensure complete protection.'),
                          space20,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget buildFaqRow(
      BuildContext context, String avatarText, String question, String answer) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor:
                Theme.of(context).colorScheme.onPrimary.withOpacity(.25),
            child: Text(
              avatarText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          wspace10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                space10,
                Text(
                  answer,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFaqColumn(
      BuildContext context, String avatarText, String question, String answer) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor:
                Theme.of(context).colorScheme.onPrimary.withOpacity(.25),
            child: Text(
              avatarText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          wspace10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                space10,
                Text(
                  answer,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
