import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final int minLines;
  final int maxLines;
  final TextEditingController controller;
  final String? Function(String?)? validator; // Optional validator

  const CustomTextfield(
      {super.key,
      required this.hintText,
      required this.minLines,
      required this.maxLines,
      required this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        validator: validator,
        controller: controller,
        maxLines: maxLines,
        minLines: minLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Theme.of(context).colorScheme.secondary.withOpacity(.5)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                width: 3,
                color: Theme.of(context).colorScheme.primary.withOpacity(.5)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: .5, color: Theme.of(context).colorScheme.secondary),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
