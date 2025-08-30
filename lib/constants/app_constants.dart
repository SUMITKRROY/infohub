class AppConstants {
  // App Information
  static const String appName = "Company Info Hub";
  static const String appVersion = "1.0.0";
  static const String appDescription = "Your trusted tech partner";

  // Company Information
  static const String companyName = "TechCorp";
  static const String companyEmail = "contact@company.com";
  static const String companyPhone = "+123 456 7890";
  static const String companyWebsite = "www.company.com";

  // Navigation Routes
  static const String homeRoute = "/";
  static const String aboutRoute = "/about";
  static const String contactRoute = "/contact";
  static const String servicesRoute = "/services";
  static const String portfolioRoute = "/portfolio";
  static const String settingsRoute = "/settings";

  // Section Titles
  static const String quickInfoTitle = "Quick Info";
  static const String servicesTitle = "Services";
  static const String exploreTitle = "Explore";

  // Error Messages
  static const String networkError = "Network error occurred";
  static const String generalError = "Something went wrong";
  static const String noDataError = "No data available";

  // Success Messages
  static const String dataLoadedSuccess = "Data loaded successfully";
  static const String actionCompleted = "Action completed successfully";

  // Animation Durations
  static const Duration shortAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 300);
  static const Duration longAnimation = Duration(milliseconds: 500);

  // API Endpoints (if needed in future)
  static const String baseUrl = "https://api.company.com";
  static const String companyInfoEndpoint = "/company-info";
  static const String servicesEndpoint = "/services";
}
