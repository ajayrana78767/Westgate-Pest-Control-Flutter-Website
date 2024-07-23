// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';

// class ServicesPage extends StatelessWidget {
//   ServicesPage({super.key});

//   Future<List<QueryDocumentSnapshot>> fetchServices() async {
//     try {
//       final QuerySnapshot snapshot =
//           await FirebaseFirestore.instance.collection('services').get();
//       return snapshot.docs;
//     } catch (e) {
//       throw Exception('Failed to load services: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:
//           EdgeInsets.all(MediaQuery.of(context).size.width > 600 ? 60.0 : 20.0),
//       child: Column(
//         children: [
//           Text(
//             'Services',
//             style: TextStyle(
//               fontSize: 36,
//               fontWeight: FontWeight.bold,
//               color: Theme.of(context).colorScheme.primary,
//             ),
//           ),
//           space20,
//           FutureBuilder<List<QueryDocumentSnapshot>>(
//             future: fetchServices(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return GridView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount:
//                         MediaQuery.of(context).size.width > 1200 ? 3 : 1,
//                     childAspectRatio: 1,
//                     crossAxisSpacing:
//                         MediaQuery.of(context).size.width > 1200 ? 10 : 100,
//                     mainAxisSpacing:
//                         MediaQuery.of(context).size.width > 1200 ? 10 : 150,
//                   ),
//                   itemCount: 3, // Number of shimmer placeholders
//                   itemBuilder: (context, index) {
//                     return Shimmer.fromColors(
//                       baseColor: Colors.grey[300]!,
//                       highlightColor: Colors.grey[100]!,
//                       child: Container(
//                         margin: const EdgeInsets.all(30),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius:
//                               const BorderRadius.all(Radius.circular(16)),
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               }

//               if (snapshot.hasError) {
//                 return Center(child: Text('Error: ${snapshot.error}'));
//               }

//               if (!snapshot.hasData || snapshot.data!.isEmpty) {
//                 return const Center(child: Text('No data available'));
//               }

//               final documents = snapshot.data!;

//               return GridView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount:
//                       MediaQuery.of(context).size.width > 1200 ? 3 : 1,
//                   childAspectRatio: 1,
//                   crossAxisSpacing:
//                       MediaQuery.of(context).size.width > 1200 ? 10 : 100,
//                   mainAxisSpacing:
//                       MediaQuery.of(context).size.width > 1200 ? 10 : 150,
//                 ),
//                 itemCount: documents.length,
//                 itemBuilder: (context, index) {
//                   final doc = documents[index];
//                   final data = doc.data() as Map<String, dynamic>;

// // Safely handle null values
//                   final imageUrl = data['image Url'] as String? ?? '';
//                   final title = data['title'] as String? ?? 'No Title';
//                   final description =
//                       data['description'] as String? ?? 'No Description';

//                   return Stack(
//                     clipBehavior: Clip.none,
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.all(30),
//                         decoration: BoxDecoration(
//                           borderRadius:
//                               const BorderRadius.all(Radius.circular(16)),
//                           image: DecorationImage(
//                             image: CachedNetworkImageProvider(imageUrl),
//                             fit: BoxFit.cover,
//                             onError: (error, stackTrace) {
// // Fallback image if the network image fails
//                               debugPrint('Image error: $error');
//                             },
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         bottom: -200,
//                         left: 0,
//                         right: 0,
//                         child: Stack(
//                           children: [
//                             Container(
//                               height: 400,
//                               padding: const EdgeInsets.all(20),
//                               margin: const EdgeInsets.all(50),
//                               decoration: BoxDecoration(
//                                 color: Theme.of(context).colorScheme.onPrimary,
//                                 borderRadius:
//                                     const BorderRadius.all(Radius.circular(8)),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     offset: const Offset(0, 4),
//                                     blurRadius: 12,
//                                     spreadRadius: 4,
//                                     color: Theme.of(context)
//                                         .colorScheme
//                                         .secondary
//                                         .withOpacity(.25),
//                                   )
//                                 ],
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   space40,
//                                   Text(title,
//                                       style: TextStyle(
//                                         color: Theme.of(context)
//                                             .colorScheme
//                                             .secondary,
//                                         fontSize: 24,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                       textAlign: TextAlign.center),
//                                   space10,
//                                   Text(
//                                     description,
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       color: Theme.of(context)
//                                           .colorScheme
//                                           .secondary,
//                                     ),
//                                     textAlign: TextAlign.center,
//                                     maxLines: 8,
//                                     overflow: TextOverflow.ellipsis,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Align(
//                               alignment: Alignment.topCenter,
//                               child: Container(
//                                 height: 100,
//                                 width: 100,
//                                 decoration: BoxDecoration(
//                                     color:
//                                         Theme.of(context).colorScheme.primary,
//                                     shape: BoxShape.circle,
//                                     border: Border.all(
//                                       color: Theme.of(context)
//                                           .colorScheme
//                                           .onPrimary,
//                                       width: 6,
//                                     )),
//                                 child: Icon(
//                                   Icons.pest_control,
//                                   size: 40,
//                                   color:
//                                       Theme.of(context).colorScheme.onPrimary,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               );
//             },
//           ),
//           space40,
//           space40,
//         ],
//       ),
//     );
//   }
// }

// ignore_for_file: body_might_complete_normally_catch_error, avoid_print

import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shimmer/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ServicesPage extends StatelessWidget {
  ServicesPage({super.key});
  final List<String> defaultImages = [
    // 'assets/images/residential.png',
    // 'assets/images/commercial.png',
    // 'assets/images/termite.png'
  ];

  Stream<List<QueryDocumentSnapshot>> fetchServices() {
    return FirebaseFirestore.instance
        .collection('services')
        .snapshots()
        .map((snapshot) => snapshot.docs);
  }

  // Future<Uint8List?> getImageBytes(String imageUrl) async {
  //   try {
  //     if (imageUrl.startsWith('https://') || imageUrl.startsWith('gs://')) {
  //       final FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  //       Uint8List? imageBytes = await firebaseStorage
  //           .refFromURL(imageUrl)
  //           .getData(10000000); // Adjust size limit if needed
  //       return imageBytes;
  //     } else {
  //       print('Invalid URL: $imageUrl');
  //       return null;
  //     }
  //   } catch (e) {
  //     print('Error fetching image: $e');
  //     return null;
  //   }
  // }
  Future<Uint8List?> getImageBytes(String imageUrl) async {
    try {
      if (imageUrl.startsWith('https://') || imageUrl.startsWith('gs://')) {
        final FirebaseStorage firebaseStorage = FirebaseStorage.instance;
        Uint8List? imageBytes = await firebaseStorage
            .refFromURL(imageUrl)
            .getData(10000000); // Adjust size limit if needed
        return imageBytes;
      } else if (imageUrl.startsWith('assets/')) {
        // Handle local asset images
        ByteData byteData = await rootBundle.load(imageUrl);
        Uint8List imageBytes = byteData.buffer.asUint8List();
        return imageBytes;
      } else {
        // print('Invalid URL: $imageUrl');
        return null;
      }
    } catch (e) {
      print('Error fetching image: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.all(MediaQuery.of(context).size.width > 600 ? 60.0 : 20.0),
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
          const SizedBox(height: 20),
          StreamBuilder<List<QueryDocumentSnapshot>>(
            stream: fetchServices(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        MediaQuery.of(context).size.width > 1200 ? 3 : 1,
                    childAspectRatio: 1,
                    crossAxisSpacing:
                        MediaQuery.of(context).size.width > 1200 ? 10 : 100,
                    mainAxisSpacing:
                        MediaQuery.of(context).size.width > 1200 ? 10 : 150,
                  ),
                  itemCount: 3, // Number of shimmer placeholders
                  itemBuilder: (context, index) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        margin: const EdgeInsets.all(30),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                      ),
                    );
                  },
                );
              }

              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }

              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(child: Text('No data available'));
              }

              final documents = snapshot.data!;

              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      MediaQuery.of(context).size.width > 1200 ? 3 : 1,
                  childAspectRatio: 1,
                  crossAxisSpacing:
                      MediaQuery.of(context).size.width > 1200 ? 10 : 100,
                  mainAxisSpacing:
                      MediaQuery.of(context).size.width > 1200 ? 10 : 150,
                ),
                itemCount: documents.length,
                itemBuilder: (context, index) {
                  final doc = documents[index];
                  final data = doc.data() as Map<String, dynamic>;

                  final imageUrl = data['image Url'] as String? ??
                      'assets/images/picture.png';
                  final title = data['title'] as String? ?? 'No Title';
                  final description =
                      data['description'] as String? ?? 'No Description';

                  print('Image URL: $imageUrl'); // Log the image URL

                  return FutureBuilder<Uint8List?>(
                    future: getImageBytes(imageUrl),
                    builder: (context, imageSnapshot) {
                      Widget imageWidget;
                      if (imageSnapshot.connectionState ==
                          ConnectionState.waiting) {
                        imageWidget =
                            const Center(child: CircularProgressIndicator());
                      } else if (imageSnapshot.hasError) {
                        imageWidget = const Icon(Icons.error);
                      } else if (imageSnapshot.hasData) {
                        imageWidget = Image.memory(
                          imageSnapshot.data!,
                          fit: BoxFit.cover,
                        );
                      } else if (imageUrl.startsWith('assets/')) {
                        imageWidget = Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                        );
                      } else {
                        imageWidget = const Icon(Icons.image_not_supported);
                      }

                      return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(30),
                            // decoration: BoxDecoration(
                            //   borderRadius:
                            //       const BorderRadius.all(Radius.circular(16)),
                            //   image: DecorationImage(
                            //     image: imageSnapshot.hasData
                            //         ? MemoryImage(imageSnapshot.data!)
                            //         : imageUrl.startsWith('assets/')
                            //             ? AssetImage(imageUrl) as ImageProvider
                            //             : CachedNetworkImageProvider(
                            //                 imageUrl,
                            //               ),
                            //     fit: BoxFit.cover,
                            //   ),
                            // ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: CachedNetworkImage(
                                
                                imageUrl: imageUrl,
                                placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          // Container(
                          //   margin: const EdgeInsets.all(30),
                          //   decoration: BoxDecoration(
                          //     borderRadius:
                          //         const BorderRadius.all(Radius.circular(16)),
                          //     image: DecorationImage(
                          //       image: imageSnapshot.hasData
                          //           ? MemoryImage(imageSnapshot.data!)
                          //           : AssetImage(imageUrl) as ImageProvider,
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          // ),
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
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8)),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const SizedBox(height: 40),
                                      Text(
                                        title,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        description,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
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
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        width: 6,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.pest_control,
                                      size: 40,
                                      color: Theme.of(context)
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
                    },
                  );
                },
              );
            },
          ),
          const SizedBox(height: 80),
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
//       padding: EdgeInsets.all(MediaQuery.of(context).size.width > 600 ? 60.0 : 20.0),
//       child: Column(
//         children: [
//           Text(
//             'Services',
//             style: TextStyle(
//               fontSize: 36,
//               fontWeight: FontWeight.bold,
//               color: Theme.of(context).colorScheme.primary,
//             ),
//           ),
//           space20,
//           GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: MediaQuery.of(context).size.width > 1200 ? 3 : 1,
//               childAspectRatio: 1,
//               crossAxisSpacing: MediaQuery.of(context).size.width > 1200 ? 10 : 100,
//               mainAxisSpacing: MediaQuery.of(context).size.width > 1200 ? 10 : 150,
//             ),
//             itemCount: images.length,
//             itemBuilder: (context, index) {
//               return Stack(
//                 // fit: StackFit
//                 //     .expand, // Ensures the Stack expands to fit its children
//                 clipBehavior: Clip.none, // Prevents clipping of children
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.all(30),
//                     decoration: BoxDecoration(
//                       borderRadius: const BorderRadius.all(Radius.circular(16)),
//                       image: DecorationImage(
//                         image: AssetImage(images[index]),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: -200,
//                     left: 0,
//                     right: 0,
//                     child: Stack(
//                       children: [
//                         Container(
//                           height: 400,
//                           padding: const EdgeInsets.all(20),
//                           margin: const EdgeInsets.all(50),
//                           decoration: BoxDecoration(
//                             color: Theme.of(context).colorScheme.onPrimary,
//                             borderRadius:
//                                 const BorderRadius.all(Radius.circular(8)),
//                             boxShadow: [
//                               BoxShadow(
//                                 offset: const Offset(0, 4),
//                                 blurRadius: 12,
//                                 spreadRadius: 4,
//                                 color: Theme.of(context)
//                                     .colorScheme
//                                     .secondary
//                                     .withOpacity(.25),
//                               )
//                             ],
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               space40,
//                               Text('Residential Pest Control',
//                                   style: TextStyle(
//                                     color:
//                                         Theme.of(context).colorScheme.secondary,
//                                     fontSize: 24,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                   textAlign: TextAlign.center),
//                               space10,
//                               Text(
//                                 'At Westgate Pest Control, we offer comprehensive residential pest control services. We can handle everything from ants and spiders to rodents and termites. We use safe and effective methods to keep your home pest-free, and we offer ongoing maintenance plans to ensure that your home stays that way.',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   color:
//                                       Theme.of(context).colorScheme.secondary,
//                                 ),
//                                 textAlign: TextAlign.center,
//                                 maxLines: 8,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment.topCenter,
//                           child: Container(
//                             height: 100,
//                             width: 100,
//                             decoration: BoxDecoration(
//                                 color: Theme.of(context).colorScheme.primary,
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color:
//                                       Theme.of(context).colorScheme.onPrimary,
//                                   width: 6,
//                                 )),
//                             child: Icon(
//                               Icons.pest_control,
//                               size: 40,
//                               color: Theme.of(context).colorScheme.onPrimary,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//         space40,
//         space40,
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

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
//               return Stack(
//                 clipBehavior: Clip.none,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.all(
//                         MediaQuery.of(context).size.width > 600 ? 30 : 10),
//                     decoration: BoxDecoration(
//                       borderRadius: const BorderRadius.all(Radius.circular(16)),
//                       image: DecorationImage(
//                         image: AssetImage(images[index]),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom:
//                         MediaQuery.of(context).size.width > 600 ? -200 : -100,
//                     left: 0,
//                     right: 0,
//                     child: Container(
//                       height:
//                           MediaQuery.of(context).size.width > 600 ? 400 : null,
//                       padding: EdgeInsets.all(
//                           MediaQuery.of(context).size.width > 600 ? 20 : 10),
//                       margin: EdgeInsets.all(
//                           MediaQuery.of(context).size.width > 600 ? 50 : 20),
//                       decoration: BoxDecoration(
//                         color: Theme.of(context).colorScheme.onPrimary,
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(8)),
//                         boxShadow: [
//                           BoxShadow(
//                             offset: const Offset(0, 4),
//                             blurRadius: 12,
//                             spreadRadius: 4,
//                             color: Theme.of(context)
//                                 .colorScheme
//                                 .secondary
//                                 .withOpacity(.25),
//                           )
//                         ],
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           SizedBox(
//                               height: MediaQuery.of(context).size.width > 600
//                                   ? 40
//                                   : 20),
//                           Text(
//                             'Residential Pest Control',
//                             style: TextStyle(
//                               color: Theme.of(context).colorScheme.secondary,
//                               fontSize: MediaQuery.of(context).size.width > 600
//                                   ? 24
//                                   : 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                           SizedBox(
//                               height: MediaQuery.of(context).size.width > 600
//                                   ? 10
//                                   : 5),
//                           Text(
//                             'At Westgate Pest Control, we offer comprehensive residential pest control services. We can handle everything from ants and spiders to rodents and termites. We use safe and effective methods to keep your home pest-free, and we offer ongoing maintenance plans to ensure that your home stays that way.',
//                             style: TextStyle(
//                               fontSize: MediaQuery.of(context).size.width > 600
//                                   ? 16
//                                   : 14,
//                               color: Theme.of(context).colorScheme.secondary,
//                             ),
//                             textAlign: TextAlign.center,
//                             maxLines: 8,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.topCenter,
//                     child: Container(
//                       height:
//                           MediaQuery.of(context).size.width > 600 ? 100 : 60,
//                       width: MediaQuery.of(context).size.width > 600 ? 100 : 60,
//                       decoration: BoxDecoration(
//                         color: Theme.of(context).colorScheme.primary,
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           color: Theme.of(context).colorScheme.onPrimary,
//                           width:
//                               MediaQuery.of(context).size.width > 600 ? 6 : 3,
//                         ),
//                       ),
//                       child: Icon(
//                         Icons.pest_control,
//                         size: MediaQuery.of(context).size.width > 600 ? 40 : 30,
//                         color: Theme.of(context).colorScheme.onPrimary,
//                       ),
//                     ),
//                   ),
//                     // Positioned(
//                     //   top: 10,
//                     //   child: Align(
//                     //         alignment: Alignment.topCenter,
//                     //         child: Container(
//                     //           height: 100,
//                     //           width: 100,
//                     //           decoration: BoxDecoration(
//                     //               color: Theme.of(context).colorScheme.primary,
//                     //               shape: BoxShape.circle,
//                     //               border: Border.all(
//                     //                 color:
//                     //                     Theme.of(context).colorScheme.onPrimary,
//                     //                 width: 6,
//                     //               )),
//                     //           child: Icon(
//                     //             Icons.pest_control,
//                     //             size: 40,
//                     //             color: Theme.of(context).colorScheme.onPrimary,
//                     //           ),
//                     //         ),
//                     //   ),
//                     // ),
//                 ],
//               );
              
//             },
//           ),
//           const SizedBox(height: 40),
//         ],
//       ),
//     );
//   }
// }
