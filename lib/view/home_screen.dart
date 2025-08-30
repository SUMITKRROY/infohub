import 'package:flutter/material.dart';
import '../config/theam_data.dart';
import '../data/app_data.dart';
import '../constants/app_constants.dart';
import '../components/app_drawer.dart';
import '../components/info_card.dart';
import '../components/service_expansion_tile.dart';
import '../components/navigation_tile.dart';
import '../utils/navigation_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _exploreKey = GlobalKey();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _quickInfoKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.appName),
        centerTitle: true,
        backgroundColor: ColorsData.primaryColor,
        foregroundColor: ColorsData.whiteColor,
        elevation: 0,
      ),
      drawer: AppDrawer(
        onMenuTap: (route) {
          // Handle navigation here
          _handleNavigation(context, route);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.mediumPadding),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Explore Section (GridView) - First
              Container(
                key: _exploreKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionTitle(context, AppConstants.exploreTitle),
                    SizedBox(height: AppSizes.mediumMargin),
                    GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: AppSizes.mediumMargin,
                      mainAxisSpacing: AppSizes.mediumMargin,
                      childAspectRatio: AppSizes.containerWidth / AppSizes.containerHeight,
                      children: AppData.navigationTiles.map((tileData) => NavigationTile(
                        tileData: tileData,
                        onTap: () => _handleNavigationTileTap(context, tileData),
                      )).toList(),
                    ),
                  ],
                ),
              ),

              SizedBox(height: AppSizes.largeMargin),

              // Services Section - Second
              Container(
                key: _servicesKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionTitle(context, AppConstants.servicesTitle),
                    SizedBox(height: AppSizes.mediumMargin),
                    ...AppData.services.map((service) => ServiceExpansionTile(
                      service: service,
                      onTap: () => _handleServiceTap(context, service),
                    )),
                  ],
                ),
              ),

              SizedBox(height: AppSizes.largeMargin),

              // Quick Info Section - Third
              Container(
                key: _quickInfoKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionTitle(context, AppConstants.quickInfoTitle),
                    SizedBox(height: AppSizes.mediumMargin),
                    ...AppData.companyInfo.map((info) => InfoCard(
                      info: info,
                      onTap: () => _handleInfoCardTap(context, info),
                    )),
                  ],
                ),
              ),

              SizedBox(height: AppSizes.largeMargin),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.mediumPadding,
        vertical: AppSizes.smallPadding,
      ),
      decoration: BoxDecoration(
        color: ColorsData.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppSizes.borderRadius),
        border: Border.all(
          color: ColorsData.primaryColor.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: ColorsData.primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  void _handleNavigation(BuildContext context, String route) {
    NavigationUtils.navigateTo(context, route);
  }

  void _handleInfoCardTap(BuildContext context, dynamic info) {
    NavigationUtils.showInfo(context, 'Selected: ${info.title}');
  }

  void _handleServiceTap(BuildContext context, dynamic service) {
    NavigationUtils.showInfo(context, 'Service: ${service.title}');
  }

  void _handleNavigationTileTap(BuildContext context, dynamic tileData) {
    // Navigate through the sections: Explore -> Services -> Quick Info
    switch (tileData.label.toLowerCase()) {
      case 'company':
      case 'careers':
      case 'news':
      case 'faq':
        // Navigate to Services section (second section)
        _showServicesSection(context);
        break;
      default:
        NavigationUtils.navigateTo(context, tileData.route ?? '/');
    }
  }

  void _showServicesSection(BuildContext context) {
    // Scroll to services section (second section)
    NavigationUtils.showInfo(context, 'Navigating to Services section...');
    
    // Scroll to services section
    _scrollToSection(_servicesKey);
    
    // After a delay, scroll to quick info section (third section)
    Future.delayed(AppConstants.mediumAnimation, () {
      _showQuickInfoSection(context);
    });
  }

  void _showQuickInfoSection(BuildContext context) {
    NavigationUtils.showInfo(context, 'Now showing Quick Info section...');
    
    // Scroll to quick info section (third section)
    _scrollToSection(_quickInfoKey);
  }

  void _scrollToSection(GlobalKey key) {
    final RenderBox? renderBox = key.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final position = renderBox.localToGlobal(Offset.zero);
      final scrollPosition = _scrollController.position.pixels;
      final targetPosition = scrollPosition + position.dy - 100; // Offset for app bar
      
      _scrollController.animateTo(
        targetPosition,
        duration: AppConstants.mediumAnimation,
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
