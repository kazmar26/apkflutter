// /lib/presentation/widgets/expertise_section.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'expertise_card.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/texts.dart';

class ExpertiseSection extends StatelessWidget {
  const ExpertiseSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ExpertiseCardData> expertises = [
      ExpertiseCardData(
        title: 'Production végétale',
        description: 'Suivi des cultures, conseils agronomiques, gestion des parcelles.',
        icon: Icons.agriculture,
        color: AppColors.agricultureColor,
      ),
      ExpertiseCardData(
        title: 'Élevage',
        description: 'Suivi du bétail, santé animale, alimentation et reproduction.',
        icon: Icons.pets,
        color: AppColors.livestockColor,
      ),
      ExpertiseCardData(
        title: 'Commercialisation',
        description: 'Gestion des stocks, ventes, acheteurs et marchés.',
        icon: Icons.shopping_cart,
        color: AppColors.marketColor,
      ),
      ExpertiseCardData(
        title: 'Suivi & Analyses',
        description: 'Données, rapports et tableaux de bord pour mieux décider.',
        icon: Icons.analytics,
        color: AppColors.analyticsColor,
      ),
    ];

    return Container(
      color: AppColors.greyLight,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Column(
        children: [
          Text(
            AppTexts.expertiseLabel,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            AppTexts.expertiseTitle,
            style: GoogleFonts.poppins(
              fontSize: MediaQuery.of(context).size.width < 600 ? 24 : 32,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryDark,
            ),
          ),
          const SizedBox(height: 48),
          LayoutBuilder(
            builder: (context, constraints) {
              final crossAxisCount = constraints.maxWidth > 800 
                ? 4 
                : (constraints.maxWidth > 600 ? 2 : 1);
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                  childAspectRatio: 1.2,
                ),
                itemCount: expertises.length,
                itemBuilder: (context, index) => ExpertiseCard(data: expertises[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}