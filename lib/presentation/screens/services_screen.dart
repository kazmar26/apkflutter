// /lib/presentation/screens/services_screen.dart
import 'package:flutter/material.dart';
import '../widgets/service_card.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/texts.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ServiceCardData> services = [
      ServiceCardData(
        title: 'Web',
        description: 'Sites web et applications puissantes et sécurisées.',
        icon: Icons.web,
        color: AppColors.webColor,
      ),
      ServiceCardData(
        title: 'Mobile',
        description: 'Applications Android performantes & intuitives.',
        icon: Icons.phone_android,
        color: AppColors.mobileColor,
      ),
      ServiceCardData(
        title: 'USSD',
        description: 'Solutions accessibles à tous, même sans internet.',
        icon: Icons.signal_cellular_alt,
        color: AppColors.ussdColor,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nos Services'),
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.primaryDark,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: services.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ServiceCard(data: services[index]),
          );
        },
      ),
    );
  }
}