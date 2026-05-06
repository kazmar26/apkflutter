// /lib/presentation/widgets/contact_section.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/app_constants.dart';
import '../../core/constants/texts.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
      color: AppColors.greyVeryDark,
      child: Column(
        children: [
          Text(
            AppTexts.contactLabel,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            AppTexts.contactTitle,
            style: GoogleFonts.poppins(
              fontSize: MediaQuery.of(context).size.width < 600 ? 24 : 32,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            AppTexts.contactDescription,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.grey.shade400,
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 16,
            runSpacing: 16,
            children: [
              _buildContactButton(
                icon: Icons.email,
                label: 'Email',
                color: Colors.red,
                onTap: () => launchUrl(Uri.parse('mailto:${AppConstants.email}')),
              ),
              _buildContactButton(
                icon: Icons.phone,
                label: 'Téléphone',
                color: AppColors.primary,
                onTap: () => launchUrl(Uri.parse('tel:${AppConstants.phone.replaceAll(' ', '')}')),
              ),
              _buildContactButton(
                icon: Icons.phone_android,
                label: 'WhatsApp',
                color: Colors.green,
                onTap: () => launchUrl(Uri.parse(AppConstants.whatsapp)),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Text(
                  'Suivez-nous',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialIcon(Icons.facebook, AppConstants.facebook),
                    const SizedBox(width: 24),
                    _buildSocialIcon(Icons.link, AppConstants.linkedin),
                    const SizedBox(width: 24),
                    _buildSocialIcon(Icons.camera_alt, AppConstants.instagram),
                    const SizedBox(width: 24),
                    _buildSocialIcon(Icons.chat, AppConstants.twitter),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Text(
            '© 2026 AfricaSoftDEV. Tous droits réservés.',
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.grey.shade500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 20, color: color),
            const SizedBox(width: 8),
            Text(
              label,
              style: GoogleFonts.poppins(
                color: AppColors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, String url) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(url)),
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.shade700,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: AppColors.white, size: 24),
      ),
    );
  }
}