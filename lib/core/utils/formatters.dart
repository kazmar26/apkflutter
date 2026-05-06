// /lib/core/utils/formatters.dart

import 'package:intl/intl.dart';

class Formatters {
  // Formater le numéro de téléphone (ex: 0707070707 -> 07 07 07 07 07)
  static String formatPhoneNumber(String phone) {
    final cleaned = phone.replaceAll(RegExp(r'[^0-9]'), '');
    if (cleaned.length == 10) {
      return '${cleaned.substring(0, 2)} ${cleaned.substring(2, 4)} ${cleaned.substring(4, 6)} ${cleaned.substring(6, 8)} ${cleaned.substring(8, 10)}';
    }
    return phone;
  }
  
  // Formater la date
  static String formatDate(DateTime date, {String format = 'dd/MM/yyyy'}) {
    return DateFormat(format).format(date);
  }
  
  // Formater le prix (ex: 10000 -> 10 000 FCFA)
  static String formatPrice(int price, {String currency = 'FCFA'}) {
    final formatter = NumberFormat('#,###', 'fr_FR');
    return '${formatter.format(price)} $currency';
  }
  
  // Tronquer le texte avec ...
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}...';
  }
  
  // Mettre la première lettre en majuscule
  static String capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }
  
  // Mettre chaque mot en majuscule
  static String capitalizeWords(String text) {
    if (text.isEmpty) return text;
    return text.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }
  
  // Nettoyer le texte (supprimer espaces multiples, trim)
  static String cleanText(String text) {
    return text.trim().replaceAll(RegExp(r'\s+'), ' ');
  }
  
  // Formater l'email (mettre en minuscule)
  static String formatEmail(String email) {
    return email.trim().toLowerCase();
  }
  
  // Compter le nombre de mots
  static int wordCount(String text) {
    if (text.isEmpty) return 0;
    return text.trim().split(RegExp(r'\s+')).length;
  }
}