// /lib/presentation/screens/expertise_screen.dart
import 'package:flutter/material.dart';
import '../widgets/expertise_card.dart';
import '../../core/constants/colors.dart';

class ExpertiseScreen extends StatelessWidget {
  const ExpertiseScreen({super.key});

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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nos Expertises'),
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.primaryDark,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.2,
        ),
        itemCount: expertises.length,
        itemBuilder: (context, index) => ExpertiseCard(data: expertises[index]),
      ),
    );
  }
}