// /lib/presentation/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../widgets/hero_section.dart';
import '../widgets/services_section.dart';
import '../widgets/expertise_section.dart';
import '../widgets/mission_section.dart';
import '../widgets/contact_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeroSection(),
            SizedBox(height: 60),
            ServicesSection(),
            SizedBox(height: 80),
            ExpertiseSection(),
            SizedBox(height: 80),
            MissionSection(),
            SizedBox(height: 80),
            ContactSection(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}