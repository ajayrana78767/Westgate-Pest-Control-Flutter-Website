import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoverableListItem extends StatefulWidget {
   void _openCustomDrawer(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          color: Colors.transparent,
          height: 500,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildListItem(context, 'HOME',),
                _buildListItem(context, 'ABOUT'),
                _buildListItem(context, 'SERVICES'),
                _buildListItem(context, 'WHY US'),
                _buildListItem(context, 'GALLERY'),
                _buildListItem(context, 'FAQ'),
                _buildListItem(context, 'CONTACT'),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildListItem(BuildContext context, String title) {
    return HoverableListItem(title: title);
  }

  final String title;

  const HoverableListItem({Key? key, required this.title}) : super(key: key);

  @override
  _HoverableListItemState createState() => _HoverableListItemState();
}

class _HoverableListItemState extends State<HoverableListItem> {
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
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: _isHovered
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.secondary.withOpacity(.25),
            borderRadius: BorderRadius.circular(10),
            // boxShadow: [
            //   if (_isHovered)
            //     BoxShadow(
            //       color: Colors.grey.shade600,
            //       offset: const Offset(3, 3),
            //       blurRadius: 3,
            //       spreadRadius: 1,
            //     ),
            // ],
          ),
          child: Center(
            child: Text(
              widget.title,
              style: GoogleFonts.plusJakartaSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
