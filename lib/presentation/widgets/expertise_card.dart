// /lib/presentation/widgets/expertise_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpertiseCardData {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  
  ExpertiseCardData({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}

class ExpertiseCard extends StatelessWidget {
  final ExpertiseCardData data;
  
  const ExpertiseCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [data.color.withOpacity(0.9), data.color],
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(data.icon, size: 32, color: Colors.white),
          ),
          const SizedBox(height: 16),
          Text(
            data.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1B5E20),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            data.description,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.grey.shade600,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}