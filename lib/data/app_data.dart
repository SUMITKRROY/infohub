import '../models/company_info.dart';

class AppData {
  // Company Information
  static const List<CompanyInfo> companyInfo = [
    CompanyInfo(
      title: "About Us",
      description: "We are a global tech company focusing on AI and innovation.",
    ),
    CompanyInfo(
      title: "Our Mission",
      description: "To make technology accessible and beneficial for everyone.",
    ),
    CompanyInfo(
      title: "Contact",
      description: "Email: contact@company.com \nPhone: +123 456 7890",
    ),
    CompanyInfo(
      title: "Website",
      description: "Visit: www.company.com",
    ),
  ];

  // Services
  static const List<Service> services = [
    Service(
      title: "AI Solutions",
      description: "Cutting-edge artificial intelligence products.",
      icon: "smart_toy",
    ),
    Service(
      title: "Web Development",
      description: "Modern, scalable web applications.",
      icon: "web",
    ),
    Service(
      title: "Mobile Apps",
      description: "Cross-platform apps for iOS and Android.",
      icon: "phone_android",
    ),
    Service(
      title: "Cloud Services",
      description: "Secure and fast cloud hosting solutions.",
      icon: "cloud",
    ),
  ];

  // Navigation Tiles
  static const List<InfoTileData> navigationTiles = [
    InfoTileData(
      label: "Company",
      icon: "business",
      route: "/company",
    ),
    InfoTileData(
      label: "Careers",
      icon: "work",
      route: "/careers",
    ),
    InfoTileData(
      label: "News",
      icon: "newspaper",
      route: "/news",
    ),
    InfoTileData(
      label: "FAQ",
      icon: "help",
      route: "/faq",
    ),
  ];

  // Drawer Menu Items
  static const List<Map<String, dynamic>> drawerMenuItems = [
    {"title": "Home", "icon": "home", "route": "/"},
    {"title": "About", "icon": "info", "route": "/about"},
    {"title": "Contact", "icon": "contact_mail", "route": "/contact"},
    {"title": "Services", "icon": "build", "route": "/services"},
    {"title": "Portfolio", "icon": "folder", "route": "/portfolio"},
  ];
}
