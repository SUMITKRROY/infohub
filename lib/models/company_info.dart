class CompanyInfo {
  final String title;
  final String description;

  const CompanyInfo({
    required this.title,
    required this.description,
  });

  factory CompanyInfo.fromMap(Map<String, dynamic> map) {
    return CompanyInfo(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
    };
  }
}

class Service {
  final String title;
  final String description;
  final String? icon;

  const Service({
    required this.title,
    required this.description,
    this.icon,
  });

  factory Service.fromMap(Map<String, dynamic> map) {
    return Service(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      icon: map['icon'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'icon': icon,
    };
  }
}

class InfoTileData {
  final String label;
  final String icon;
  final String? route;

  const InfoTileData({
    required this.label,
    required this.icon,
    this.route,
  });

  factory InfoTileData.fromMap(Map<String, dynamic> map) {
    return InfoTileData(
      label: map['label'] ?? '',
      icon: map['icon'] ?? '',
      route: map['route'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'label': label,
      'icon': icon,
      'route': route,
    };
  }
}
