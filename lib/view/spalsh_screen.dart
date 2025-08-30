import 'package:flutter/material.dart';
import '../config/route.dart';
import '../config/theam_data.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to Home after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsData.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// App Logo (Placeholder)
            Icon(Icons.business, size: 80, color: ColorsData.whiteColor),
            const SizedBox(height: 16),
            Text(
              "My Company",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: ColorsData.whiteColor,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
