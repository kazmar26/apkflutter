// /lib/presentation/widgets/service_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceCardData {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  
  ServiceCardData({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}

class ServiceCard extends StatelessWidget {
  final ServiceCardData data;
  
  const ServiceCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: data.color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(data.icon, size: 48, color: data.color),
          ),
          const SizedBox(height: 24),
          Text(
            data.title,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1B5E20),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            data.description,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.grey.shade600,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 24),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward, size: 18),
            label: Text(
              'En savoir plus',
              style: GoogleFonts.poppins(fontSize: 14, color: data.color),
            ),
            style: TextButton.styleFrom(foregroundColor: data.color),
          ),
        ],
      ),
    );
  }
}