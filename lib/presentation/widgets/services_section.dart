// /lib/presentation/widgets/services_section.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'service_card.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/texts.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Text(
            AppTexts.servicesLabel,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            AppTexts.servicesTitle,
            style: GoogleFonts.poppins(
              fontSize: MediaQuery.of(context).size.width < 600 ? 24 : 32,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryDark,
            ),
          ),
          const SizedBox(height: 48),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return Row(
                  children: services.map((service) => Expanded(
                    child: ServiceCard(data: service)
                  )).toList(),
                );
              }
              return Column(
                children: services.map((service) => Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: ServiceCard(data: service),
                )).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}