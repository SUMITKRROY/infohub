import 'package:flutter/material.dart';
import '../config/theam_data.dart';
import '../data/app_data.dart';

class AppDrawer extends StatelessWidget {
  final Function(String)? onMenuTap;

  const AppDrawer({
    super.key,
    this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: ColorsData.primaryColor,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  ColorsData.primaryColor,
                  ColorsData.secondaryColor,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.business,
                  color: ColorsData.whiteColor,
                  size: 48,
                ),
                const SizedBox(height: AppSizes.smallMargin),
                Text(
                  "Company Info",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: ColorsData.whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Your trusted tech partner",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: ColorsData.whiteColor.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          ...AppData.drawerMenuItems.map((item) => ListTile(
            leading: Icon(_getIconData(item['icon'])),
            title: Text(item['title']),
            onTap: () {
              Navigator.pop(context);
              onMenuTap?.call(item['route']);
            },
          )),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Navigator.pop(context);
              onMenuTap?.call("/settings");
            },
          ),
        ],
      ),
    );
  }

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'home':
        return Icons.home;
      case 'info':
        return Icons.info;
      case 'contact_mail':
        return Icons.contact_mail;
      case 'build':
        return Icons.build;
      case 'folder':
        return Icons.folder;
      default:
        return Icons.info;
    }
  }
}
