import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'assets/images/slider_image_3.png',
    'assets/images/slider_image_1.png',
    'assets/images/slider_image_2.png',
  ];

  int _currentIndex = 0;
  


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 600,
            autoPlay: true,
            enlargeCenterPage: false,
            aspectRatio: 2560 / 400,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 500),
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: imgList
              .map((item) => Image.asset(
                    item,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 400,
                  ))
              .toList(),
        ),
        const Positioned(
          bottom: 200,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Westgate Pest Control',
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'We provide effective pest solutions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              int index = entry.key;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: Container(
                  width: 30.0,
                  height: 3.0,
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: _currentIndex == index
                        ? Theme.of(context).colorScheme.onPrimary
                        : Colors.grey,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        // Positioned(
        //   left: 20,
        //   top: 200,
        //   bottom: 200,
        //   child: IconButton(
        //     onPressed: () {
        //       // Go to the previous slide
        //       if (_currentIndex > 0) {
        //         setState(() {
        //           _currentIndex = _currentIndex--;
        //         });
        //       }
        //     },
        //     icon: const Icon(Icons.arrow_back_ios),
        //     color: Colors.white,
        //     iconSize: 32.0,
        //   ),
        // ),
        // Positioned(
        //   right: 20,
        //   top: 200,
        //   bottom: 200,
        //   child: IconButton(
        //     onPressed: () {
        //       // Go to the next slide
        //       if (_currentIndex < imgList.length - 1) {
        //         setState(() {
        //           _currentIndex = _currentIndex++;
        //         });
        //       }
        //     },
        //     icon: const Icon(Icons.arrow_forward_ios),
        //     color: Colors.white,
        //     iconSize: 32.0,
        //   ),
        // ),
      ],
    );
  }
}
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _currentIndex = 0;

//   Stream<DocumentSnapshot> fetchHomeData() {
//     return FirebaseFirestore.instance.collection('home').doc('ON1YlD5zIo8QhMsEdtyU').snapshots();
//   }

//   @override
//   void initState() {
//     super.initState();
//     fetchHomeData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<DocumentSnapshot>(
//       stream: fetchHomeData(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(child: const CircularProgressIndicator());
//         }

//         if (snapshot.hasError) {
//           return Center(child: Text('Error: ${snapshot.error}'));
//         }

//         if (!snapshot.hasData || !snapshot.data!.exists) {
//           return const Center(child: Text('No data available'));
//         }

//         final data = snapshot.data!.data() as Map<String, dynamic>;
//         final title = data['title'] ?? 'No Title';
//         final subtitle = data['subtitle'] ?? 'No Subtitle';
//         final sliderImages = List<String>.from(data['slider images'] ?? []);

//         return Stack(
//           children: [
//             CarouselSlider(
//               options: CarouselOptions(
//                 height: 600,
//                 autoPlay: true,
//                 enlargeCenterPage: false,
//                 aspectRatio: 2560 / 400,
//                 autoPlayCurve: Curves.fastOutSlowIn,
//                 enableInfiniteScroll: true,
//                 autoPlayAnimationDuration: const Duration(milliseconds: 500),
//                 viewportFraction: 1.0,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _currentIndex = index;
//                   });
//                 },
//               ),
//               items: sliderImages
//                   .map((item) => Image.network(
//                         item,
//                         fit: BoxFit.cover,
//                         width: double.infinity,
//                         height: 400,
//                       ))
//                   .toList(),
//             ),
//             Positioned(
//               bottom: 200,
//               left: 0,
//               right: 0,
//               child: Align(
//                 alignment: Alignment.center,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       title,
//                       style: const TextStyle(
//                         fontSize: 64,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Text(
//                       subtitle,
//                       textAlign: TextAlign.center,
//                       style: const TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.normal,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 20,
//               left: 0,
//               right: 0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: sliderImages.asMap().entries.map((entry) {
//                   int index = entry.key;
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _currentIndex = index;
//                       });
//                     },
//                     child: Container(
//                       width: 30.0,
//                       height: 3.0,
//                       margin: const EdgeInsets.symmetric(horizontal: 2.0),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.rectangle,
//                         color: _currentIndex == index
//                             ? Theme.of(context).colorScheme.onPrimary
//                             : Colors.grey,
//                       ),
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
