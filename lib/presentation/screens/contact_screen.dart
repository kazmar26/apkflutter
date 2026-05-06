// /lib/presentation/screens/contact_screen.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/app_constants.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contactez-nous'),
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.primaryDark,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Icon(Icons.contact_mail, size: 80, color: AppColors.primary),
            const SizedBox(height: 24),
            const Text(
              'Contactez notre équipe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Nous sommes à votre disposition pour répondre à vos questions',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 48),
            _buildContactCard(
              icon: Icons.email,
              title: 'Email',
              content: AppConstants.email,
              onTap: () => launchUrl(Uri.parse('mailto:${AppConstants.email}')),
            ),
            const SizedBox(height: 16),
            _buildContactCard(
              icon: Icons.phone,
              title: 'Téléphone',
              content: AppConstants.phone,
              onTap: () => launchUrl(Uri.parse('tel:${AppConstants.phone.replaceAll(' ', '')}')),
            ),
            const SizedBox(height: 16),
            _buildContactCard(
              icon: Icons.phone_android,
              title: 'WhatsApp',
              content: 'Cliquez pour nous écrire',
              onTap: () => launchUrl(Uri.parse(AppConstants.whatsapp)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactCard({
    required IconData icon,
    required String title,
    required String content,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: AppColors.primary, size: 28),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      content,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}