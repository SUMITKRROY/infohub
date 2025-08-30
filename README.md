# Company Info Hub

A well-organized Flutter application showcasing company information with a modern, clean UI design.

## 🏗️ Project Structure

The project follows a clean architecture pattern with proper separation of concerns:

```
lib/
├── components/          # Reusable UI components
│   ├── app_drawer.dart
│   ├── info_card.dart
│   ├── navigation_tile.dart
│   └── service_expansion_tile.dart
├── config/             # App configuration and theming
│   └── theam_data.dart
├── constants/          # App constants and configuration
│   └── app_constants.dart
├── data/              # Data layer and repositories
│   └── app_data.dart
├── models/            # Data models and entities
│   └── company_info.dart
├── utils/             # Utility functions and helpers
│   └── navigation_utils.dart
├── view/              # UI screens and pages
│   └── home_screen.dart
└── main.dart          # App entry point
```

## 🎨 Features

### Organized Components
- **InfoCard**: Reusable card component for displaying company information
- **ServiceExpansionTile**: Expandable service tiles with icons
- **NavigationTile**: Grid-based navigation tiles
- **AppDrawer**: Custom drawer with gradient header and navigation

### Data Management
- **Structured Models**: Type-safe data models with proper validation
- **Centralized Data**: All static data organized in `AppData` class
- **Constants**: App-wide constants for consistency

### UI/UX Improvements
- **Modern Design**: Clean, professional appearance
- **Responsive Layout**: Adapts to different screen sizes
- **Interactive Elements**: Proper touch feedback and animations
- **Consistent Theming**: Unified color scheme and typography

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code

### Installation
1. Clone the repository
2. Navigate to the project directory
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to start the app

## 📱 App Sections

### Quick Info
- Company overview and mission
- Contact information
- Website details

### Services
- AI Solutions
- Web Development
- Mobile Apps
- Cloud Services

### Explore
- Company information
- Career opportunities
- News and updates
- FAQ section

## 🛠️ Customization

### Adding New Data
1. Update the models in `lib/models/`
2. Add data to `lib/data/app_data.dart`
3. Update components as needed

### Modifying Themes
1. Edit `lib/config/theam_data.dart`
2. Update colors, sizes, and typography
3. Components will automatically reflect changes

### Adding New Components
1. Create new component in `lib/components/`
2. Follow the existing naming conventions
3. Import and use in your screens

## 🎯 Best Practices Implemented

- **Separation of Concerns**: UI, data, and business logic are properly separated
- **Reusability**: Components are designed to be reusable across the app
- **Type Safety**: Strong typing with proper model classes
- **Consistency**: Unified theming and styling approach
- **Maintainability**: Clean, well-documented code structure
- **Scalability**: Easy to extend with new features

## 🔧 Configuration

### Colors
All colors are defined in `ColorsData` class:
- Primary colors for branding
- Secondary colors for accents
- Text colors for readability

### Sizes
All dimensions are defined in `AppSizes` class:
- Padding and margin values
- Icon sizes
- Text sizes
- Container dimensions

### Constants
App-wide constants in `AppConstants` class:
- Navigation routes
- Section titles
- Error messages
- Animation durations

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📞 Support

For support and questions, please contact:
- Email: contact@company.com
- Phone: +123 456 7890
- Website: www.company.com
