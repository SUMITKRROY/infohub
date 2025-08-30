import 'package:flutter/material.dart';
import '../config/theam_data.dart';
import '../models/company_info.dart';

class ServiceExpansionTile extends StatelessWidget {
  final Service service;
  final VoidCallback? onTap;

  const ServiceExpansionTile({
    super.key,
    required this.service,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedIconColor: ColorsData.faqCollapsedIcon,
      iconColor: ColorsData.primaryColor,
      title: Row(
        children: [
          if (service.icon != null) ...[
            Icon(
              _getIconData(service.icon!),
              color: ColorsData.primaryColor,
              size: AppSizes.mediumIconSize,
            ),
            SizedBox(width: AppSizes.smallMargin),
          ],
          Expanded(
            child: Text(
              service.title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.mediumPadding),
          child: Text(
            service.description,
            // style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'smart_toy':
        return Icons.smart_toy;
      case 'web':
        return Icons.web;
      case 'phone_android':
        return Icons.phone_android;
      case 'cloud':
        return Icons.cloud;
      default:
        return Icons.info;
    }
  }
}
