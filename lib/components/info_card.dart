import 'package:flutter/material.dart';
import '../config/theam_data.dart';
import '../models/company_info.dart';

class InfoCard extends StatelessWidget {
  final CompanyInfo info;
  final VoidCallback? onTap;

  const InfoCard({
    super.key,
    required this.info,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: AppSizes.smallMargin),
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSizes.borderRadius),
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.mediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                info.title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: ColorsData.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: AppSizes.smallMargin),
              Text(
                info.description,
               // style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
