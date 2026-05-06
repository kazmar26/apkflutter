// /lib/presentation/widgets/hero_section.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_button.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/texts.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primaryDark,
            AppColors.primary,
            AppColors.primaryLight,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Colors.white, Colors.white70],
              ).createShader(bounds),
              child: Text(
                AppTexts.heroTitle,
                style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.width < 600 ? 36 : 48,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  letterSpacing: 2,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              AppTexts.heroSubtitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width < 600 ? 20 : 24,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: 80,
              height: 4,
              color: AppColors.white,
            ),
            const SizedBox(height: 24),
            Text(
              AppTexts.heroDescription,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.white70,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 40),
            CustomButton(
              text: AppTexts.ctaButton,
              onPressed: () {},
              isOutlined: false,
            ),
          ],
        ),
      ),
    );
  }
}