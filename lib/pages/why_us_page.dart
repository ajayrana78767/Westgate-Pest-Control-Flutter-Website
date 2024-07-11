import 'package:flutter/material.dart';
import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';

class WhyUsPage extends StatelessWidget {
  WhyUsPage({super.key});
  final List<String> images = [
    'assets/images/peace_of_mind.png',
    'assets/images/locally_owned_business.png',
    'assets/images/full_day.png',
    'assets/images/education.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'What makes us different',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          space20,
          GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
           // physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 100,
                        right: 100,
                        top: 100), // Adjust padding as needed
                    margin: const EdgeInsets.only(
                        left: 80,
                        right: 80,
                        top: 80), // Adjust margin as needed
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  space10, // Space between image and text
                  Text(
                    'Peace of Mind Protection', // Replace with actual text
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  space10, // Adjust spacing as needed
                  Text(
                    'Safeguarding Your Home and Health', // Replace with actual text
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  space10,
                  Expanded(
                    child: Text(
                      'We understand that your home is your sanctuary. It’s a place where you should feel safe, comfortable, and secure. ', // Replace with actual text
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 15,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
