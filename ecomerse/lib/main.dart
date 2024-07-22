import 'package:flutter/material.dart';


void main() {
  runApp(OnboardingApp());
}

class OnboardingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          buildOnboardingPage(
            backgroundColor: Colors.green,
            logoPath: 'assets/logo_green.png',
          ),
          buildOnboardingPage(
            backgroundColor: Colors.white,
            logoPath: 'assets/logo_white.png',
          ),
        ],
      ),
    );
  }

  Widget buildOnboardingPage({
    required Color backgroundColor,
    required String logoPath,
  }) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logoPath,
              height: 100,
            ),
            SizedBox(height: 20),
            Text(
              'eGrocery',
              style: TextStyle(
                color: backgroundColor == Colors.green ? Colors.white : Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'your daily needs',
              style: TextStyle(
                color: backgroundColor == Colors.green ? Colors.white : Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
