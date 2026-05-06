// /lib/core/utils/validators.dart

class Validators {
  // Valide l'email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'L\'email est requis';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Veuillez entrer un email valide';
    }
    return null;
  }
  
  // Valide le numéro de téléphone
  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le numéro de téléphone est requis';
    }
    final phoneRegExp = RegExp(r'^[0-9]{8,15}$');
    if (!phoneRegExp.hasMatch(value.replaceAll(RegExp(r'[^0-9]'), ''))) {
      return 'Veuillez entrer un numéro valide (8-15 chiffres)';
    }
    return null;
  }
  
  // Valide que le champ n'est pas vide
  static String? validateRequired(String? value, {String fieldName = 'Ce champ'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName est requis';
    }
    return null;
  }
  
  // Valide la longueur minimale
  static String? validateMinLength(String? value, int minLength, {String fieldName = 'Ce champ'}) {
    if (value != null && value.length < minLength) {
      return '$fieldName doit contenir au moins $minLength caractères';
    }
    return null;
  }
  
  // Valide la longueur maximale
  static String? validateMaxLength(String? value, int maxLength, {String fieldName = 'Ce champ'}) {
    if (value != null && value.length > maxLength) {
      return '$fieldName ne doit pas dépasser $maxLength caractères';
    }
    return null;
  }
  
  // Valide le nom (lettres, espaces, tirets)
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Le nom est requis';
    }
    final nameRegExp = RegExp(r'^[a-zA-ZÀ-ÿ\s\-]{2,50}$');
    if (!nameRegExp.hasMatch(value.trim())) {
      return 'Le nom doit contenir uniquement des lettres (2-50 caractères)';
    }
    return null;
  }
  
  // Valide le message
  static String? validateMessage(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Le message est requis';
    }
    if (value.trim().length < 10) {
      return 'Le message doit contenir au moins 10 caractères';
    }
    if (value.trim().length > 500) {
      return 'Le message ne doit pas dépasser 500 caractères';
    }
    return null;
  }
}