// /lib/presentation/widgets/mission_section.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_button.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/texts.dart';

class MissionSection extends StatelessWidget {
  const MissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> benefits = [
      '✅ Expertise locale et internationale',
      '✅ Solutions adaptées à vos besoins',
      '✅ Accompagnement personnalisé',
      '✅ Impact durable et mesurable',
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(MediaQuery.of(context).size.width < 600 ? 24 : 48),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primaryDark,
            AppColors.primary,
          ],
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            AppTexts.missionLabel,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white70,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            AppTexts.missionTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: MediaQuery.of(context).size.width < 600 ? 22 : 28,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 32),
          CustomButton(
            text: AppTexts.missionCta,
            onPressed: () {},
            isOutlined: true,
          ),
          const SizedBox(height: 40),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 24,
            runSpacing: 16,
            children: benefits.map((benefit) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                benefit,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }
}