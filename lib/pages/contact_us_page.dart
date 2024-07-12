import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:westgate_pest_control_website_/utils/spacing_utils.dart';
import 'package:westgate_pest_control_website_/widgets/custom_textfield.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

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
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get a Free Quote!',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    space20,
                    const Flexible(
                      // Use Flexible instead of Expanded
                      child: CustomTextfield(
                        maxLines: 1,
                        minLines: 1,
                        hintText: 'Name',
                      ),
                    ),
                    space20,
                    const Flexible(
                      // Use Flexible instead of Expanded
                      child: CustomTextfield(
                        maxLines: 1,
                        minLines: 1,
                        hintText: 'Email*',
                      ),
                    ),
                    space20,
                    const Flexible(
                      // Use Flexible instead of Expanded
                      child: CustomTextfield(
                        maxLines: 1,
                        minLines: 1,
                        hintText: 'Phone',
                      ),
                    ),
                    space20,
                    const Flexible(
                      // Use Flexible instead of Expanded
                      child: CustomTextfield(
                        maxLines: 1,
                        minLines: 1,
                        hintText: 'Address(Street, City, Zip Code)',
                      ),
                    ),
                    space20,
                    const Flexible(
                      // Use Flexible instead of Expanded
                      child: CustomTextfield(
                        maxLines: 4,
                        minLines: 4,
                        hintText:
                            "Let us know the details of what you are looking for, and we'll contact you with a quote.",
                      ),
                    ),
                    space20,
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          border: Border.all(
                            color: Theme.of(context)
                                .colorScheme
                                .primary, // Border color when not hovered
                            width: .5, // Border width
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
                        onTap: () {},
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
        ],
      ),
    );
  }
}
