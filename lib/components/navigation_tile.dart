import 'package:flutter/material.dart';
import '../config/theam_data.dart';
import '../models/company_info.dart';

class NavigationTile extends StatelessWidget {
  final InfoTileData tileData;
  final VoidCallback? onTap;

  const NavigationTile({
    super.key,
    required this.tileData,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSizes.borderRadius),
        splashColor: ColorsData.primaryColor.withOpacity(0.3),
        highlightColor: ColorsData.primaryColor.withOpacity(0.1),
        child: Container(
          decoration: BoxDecoration(
            color: ColorsData.secondaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(AppSizes.borderRadius),
            border: Border.all(
              color: ColorsData.primaryColor.withOpacity(0.3),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: ColorsData.primaryColor.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _getIconData(tileData.icon),
                size: AppSizes.largeIconSize,
                color: ColorsData.primaryColor,
              ),
              SizedBox(height: AppSizes.smallMargin),
              Text(
                tileData.label,
                // style: Theme.of(context).textTheme.bodySmall?.copyWith(
                //   fontWeight: FontWeight.w500,
                //   color: ColorsData.whiteColor,
                // ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'business':
        return Icons.business;
      case 'work':
        return Icons.work;
      case 'newspaper':
        return Icons.newspaper;
      case 'help':
        return Icons.help;
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
