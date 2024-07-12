import 'package:flutter/material.dart';
import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';

class ServicesPage extends StatelessWidget {
  ServicesPage({super.key});
  final List<String> images = [
    'assets/images/residential.png',
    'assets/images/commercial.png',
    'assets/images/termite.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width > 600 ? 60.0 : 20.0),
      child: Column(
        children: [
          Text(
            'Services',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          space20,
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).size.width > 1200 ? 3 : 1,
              childAspectRatio: 1,
              crossAxisSpacing: MediaQuery.of(context).size.width > 1200 ? 10 : 100,
              mainAxisSpacing: MediaQuery.of(context).size.width > 1200 ? 10 : 150,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Stack(
                // fit: StackFit
                //     .expand, // Ensures the Stack expands to fit its children
                clipBehavior: Clip.none, // Prevents clipping of children
                children: [
                  Container(
                    margin: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -200,
                    left: 0,
                    right: 0,
                    child: Stack(
                      children: [
                        Container(
                          height: 400,
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(50),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onPrimary,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 4),
                                blurRadius: 12,
                                spreadRadius: 4,
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondary
                                    .withOpacity(.25),
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              space40,
                              Text('Residential Pest Control',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center),
                              space10,
                              Text(
                                'At Westgate Pest Control, we offer comprehensive residential pest control services. We can handle everything from ants and spiders to rodents and termites. We use safe and effective methods to keep your home pest-free, and we offer ongoing maintenance plans to ensure that your home stays that way.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 8,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  width: 6,
                                )),
                            child: Icon(
                              Icons.pest_control,
                              size: 40,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        space40,
        space40,
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';

// class ServicesPage extends StatelessWidget {
//   ServicesPage({super.key});
//   final List<String> images = [
//     'assets/images/residential.png',
//     'assets/images/commercial.png',
//     'assets/images/termite.png'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:
//           EdgeInsets.all(MediaQuery.of(context).size.width > 600 ? 60.0 : 20.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             'Services',
//             style: TextStyle(
//               fontSize: 36,
//               fontWeight: FontWeight.bold,
//               color: Theme.of(context).colorScheme.primary,
//             ),
//           ),
//           const SizedBox(height: 20),
//           GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: MediaQuery.of(context).size.width > 1200 ? 3 : 1,
//               childAspectRatio: 1,
//               crossAxisSpacing:
//                   MediaQuery.of(context).size.width > 1200 ? 10 : 10,
//               mainAxisSpacing:
//                   MediaQuery.of(context).size.width > 1200 ? 10 : 100,
//             ),
//             itemCount: images.length,
//             itemBuilder: (context, index) {
//               // return Stack(
//               //   clipBehavior: Clip.none,
//               //   children: [
//               //     Container(
//               //       margin: EdgeInsets.all(
//               //           MediaQuery.of(context).size.width > 600 ? 30 : 10),
//               //       decoration: BoxDecoration(
//               //         borderRadius: const BorderRadius.all(Radius.circular(16)),
//               //         image: DecorationImage(
//               //           image: AssetImage(images[index]),
//               //           fit: BoxFit.cover,
//               //         ),
//               //       ),
//               //     ),
//               //     Positioned(
//               //       bottom:
//               //           MediaQuery.of(context).size.width > 600 ? -200 : -100,
//               //       left: 0,
//               //       right: 0,
//               //       child: Container(
//               //         height:
//               //             MediaQuery.of(context).size.width > 600 ? 400 : null,
//               //         padding: EdgeInsets.all(
//               //             MediaQuery.of(context).size.width > 600 ? 20 : 10),
//               //         margin: EdgeInsets.all(
//               //             MediaQuery.of(context).size.width > 600 ? 50 : 20),
//               //         decoration: BoxDecoration(
//               //           color: Theme.of(context).colorScheme.onPrimary,
//               //           borderRadius:
//               //               const BorderRadius.all(Radius.circular(8)),
//               //           boxShadow: [
//               //             BoxShadow(
//               //               offset: const Offset(0, 4),
//               //               blurRadius: 12,
//               //               spreadRadius: 4,
//               //               color: Theme.of(context)
//               //                   .colorScheme
//               //                   .secondary
//               //                   .withOpacity(.25),
//               //             )
//               //           ],
//               //         ),
//               //         child: Column(
//               //           crossAxisAlignment: CrossAxisAlignment.center,
//               //           mainAxisSize: MainAxisSize.min,
//               //           children: [
//               //             SizedBox(
//               //                 height: MediaQuery.of(context).size.width > 600
//               //                     ? 40
//               //                     : 20),
//               //             Text(
//               //               'Residential Pest Control',
//               //               style: TextStyle(
//               //                 color: Theme.of(context).colorScheme.secondary,
//               //                 fontSize: MediaQuery.of(context).size.width > 600
//               //                     ? 24
//               //                     : 18,
//               //                 fontWeight: FontWeight.bold,
//               //               ),
//               //               textAlign: TextAlign.center,
//               //             ),
//               //             SizedBox(
//               //                 height: MediaQuery.of(context).size.width > 600
//               //                     ? 10
//               //                     : 5),
//               //             Text(
//               //               'At Westgate Pest Control, we offer comprehensive residential pest control services. We can handle everything from ants and spiders to rodents and termites. We use safe and effective methods to keep your home pest-free, and we offer ongoing maintenance plans to ensure that your home stays that way.',
//               //               style: TextStyle(
//               //                 fontSize: MediaQuery.of(context).size.width > 600
//               //                     ? 16
//               //                     : 14,
//               //                 color: Theme.of(context).colorScheme.secondary,
//               //               ),
//               //               textAlign: TextAlign.center,
//               //               maxLines: 8,
//               //               overflow: TextOverflow.ellipsis,
//               //             ),
//               //           ],
//               //         ),
//               //       ),
//               //     ),
//               //     Align(
//               //       alignment: Alignment.topCenter,
//               //       child: Container(
//               //         height:
//               //             MediaQuery.of(context).size.width > 600 ? 100 : 60,
//               //         width: MediaQuery.of(context).size.width > 600 ? 100 : 60,
//               //         decoration: BoxDecoration(
//               //           color: Theme.of(context).colorScheme.primary,
//               //           shape: BoxShape.circle,
//               //           border: Border.all(
//               //             color: Theme.of(context).colorScheme.onPrimary,
//               //             width:
//               //                 MediaQuery.of(context).size.width > 600 ? 6 : 3,
//               //           ),
//               //         ),
//               //         child: Icon(
//               //           Icons.pest_control,
//               //           size: MediaQuery.of(context).size.width > 600 ? 40 : 30,
//               //           color: Theme.of(context).colorScheme.onPrimary,
//               //         ),
//               //       ),
//               //     ),
//               //       // Positioned(
//               //       //   top: 10,
//               //       //   child: Align(
//               //       //         alignment: Alignment.topCenter,
//               //       //         child: Container(
//               //       //           height: 100,
//               //       //           width: 100,
//               //       //           decoration: BoxDecoration(
//               //       //               color: Theme.of(context).colorScheme.primary,
//               //       //               shape: BoxShape.circle,
//               //       //               border: Border.all(
//               //       //                 color:
//               //       //                     Theme.of(context).colorScheme.onPrimary,
//               //       //                 width: 6,
//               //       //               )),
//               //       //           child: Icon(
//               //       //             Icons.pest_control,
//               //       //             size: 40,
//               //       //             color: Theme.of(context).colorScheme.onPrimary,
//               //       //           ),
//               //       //         ),
//               //       //   ),
//               //       // ),
//               //   ],
//               // );
              
//             },
//           ),
//           const SizedBox(height: 40),
//         ],
//       ),
//     );
//   }
// }
