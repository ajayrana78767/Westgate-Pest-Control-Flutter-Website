import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  final Function(String) onItemTap;

  SideDrawer({required this.onItemTap});

  Widget buildNavItem(String title, BuildContext context) {
    return ListTile(
      // leading: Icon(icon, color: Theme.of(context).colorScheme.secondary),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      onTap: () => onItemTap(title.toLowerCase()),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      horizontalTitleGap: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      tileColor: Theme.of(context).colorScheme.onPrimary.withOpacity(0.1),
      selectedTileColor:
          Theme.of(context).colorScheme.onPrimary.withOpacity(0.2),
      hoverColor: Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                buildNavItem('HOME', context),
                buildNavItem('ABOUT', context),
                buildNavItem('SERVICES', context),
                buildNavItem('WHY US', context),
                buildNavItem('GALLERY', context),
                buildNavItem('FAQ', context),
                buildNavItem('CONTACT', context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
