import 'package:flutter/material.dart';
import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';

class GalleryPage extends StatefulWidget {
  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final List<String> images = [
    'assets/images/gallery_image_1.jpeg',
    'assets/images/gallery_image_2.jpeg',
    'assets/images/gallery_image_3.jpeg',
    'assets/images/gallery_image_4.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        children: [
          Text(
            'Gallery',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          space20,
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 60,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              EdgeInsets padding = EdgeInsets.zero;
              if (index == 0) {
                padding = const EdgeInsets.only(left: 60);
              } else if (index == images.length - 1) {
                padding = const EdgeInsets.only(right: 60);
              }
          
              return Padding(
                padding: padding,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) =>
                          ImagePopup(images: images, index: index),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                            image: AssetImage(images[index]), fit: BoxFit.cover)),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ImagePopup extends StatefulWidget {
  final List<String> images;
  final int index;

  ImagePopup({required this.images, required this.index});

  @override
  _ImagePopupState createState() => _ImagePopupState();
}

class _ImagePopupState extends State<ImagePopup> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.index;
  }

  void _nextImage() {
    setState(() {
      currentIndex = (currentIndex + 1) % widget.images.length;
    });
  }

  void _previousImage() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + widget.images.length) % widget.images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.primary,
      contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                width: 300, // Set the desired width
                height: 300, // Set the desired height
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                    image: AssetImage(widget.images[currentIndex]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: IconButton(
                  icon: Icon(Icons.arrow_back,
                      color: Theme.of(context).colorScheme.onPrimary),
                  onPressed: _previousImage,
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: IconButton(
                  icon: Icon(Icons.arrow_forward,
                      color: Theme.of(context).colorScheme.onPrimary),
                  onPressed: _nextImage,
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Close',
              style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
