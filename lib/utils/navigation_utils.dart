import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class NavigationUtils {
  /// Navigate to a specific route
  static void navigateTo(BuildContext context, String route) {
    // For now, show a snackbar. In a real app, you would use Navigator.pushNamed
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Navigating to: $route'),
        duration: AppConstants.shortAnimation,
        backgroundColor: Colors.green,
      ),
    );
  }

  /// Show error message
  static void showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: AppConstants.mediumAnimation,
        backgroundColor: Colors.red,
      ),
    );
  }

  /// Show success message
  static void showSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: AppConstants.shortAnimation,
        backgroundColor: Colors.green,
      ),
    );
  }

  /// Show info message
  static void showInfo(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: AppConstants.shortAnimation,
        backgroundColor: Colors.blue,
      ),
    );
  }

  /// Validate email format
  static bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  /// Validate phone number format
  static bool isValidPhone(String phone) {
    return RegExp(r'^\+?[\d\s-]+$').hasMatch(phone);
  }

  /// Format phone number
  static String formatPhoneNumber(String phone) {
    // Remove all non-digit characters
    String digits = phone.replaceAll(RegExp(r'[^\d]'), '');
    
    // Format based on length
    if (digits.length == 10) {
      return '(${digits.substring(0, 3)}) ${digits.substring(3, 6)}-${digits.substring(6)}';
    } else if (digits.length == 11 && digits.startsWith('1')) {
      return '+1 (${digits.substring(1, 4)}) ${digits.substring(4, 7)}-${digits.substring(7)}';
    }
    
    return phone; // Return original if can't format
  }

  /// Capitalize first letter of each word
  static String capitalizeWords(String text) {
    if (text.isEmpty) return text;
    
    return text.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  /// Get initials from name
  static String getInitials(String name) {
    if (name.isEmpty) return '';
    
    List<String> words = name.split(' ');
    if (words.length == 1) {
      return words[0][0].toUpperCase();
    } else {
      return '${words[0][0]}${words[1][0]}'.toUpperCase();
    }
  }
}
