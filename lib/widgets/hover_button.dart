import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HoverButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final BoxShape shape;
  final bool isImageButton;
  final String? image;

  const HoverButton({
    required this.text,
    required this.onPressed,
    required this.shape,
    required this.isImageButton,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: _isHovered
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onPrimary,
            border: _isHovered
                ? null
                : Border.all(
                    color: Theme.of(context)
                        .colorScheme
                        .primary, // Border color when not hovered
                    width: .5, // Border width
                  ),
            shape: widget.shape,
          ),
          child: widget.isImageButton
              ? SizedBox(
                  height: 35,
                  width: 35,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SvgPicture.asset(
                      widget.image!,
                      fit: BoxFit.contain,
                      color: _isHovered
                          ? Theme.of(context).colorScheme.onPrimary
                          : Theme.of(context).colorScheme.primary,
                    ),
                  ),
                )
              : Text(
                  widget.text,
                  style: TextStyle(
                    color: _isHovered
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                ),
        ),
      ),
    );
  }
}
