// /lib/presentation/viewmodels/contact_viewmodel.dart
import 'package:flutter/material.dart';

class ContactViewModel extends ChangeNotifier {
  // Contrôleurs de formulaire
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();
  
  // État du formulaire
  bool _isLoading = false;
  bool _isSubmitted = false;
  String? _errorMessage;
  
  bool get isLoading => _isLoading;
  bool get isSubmitted => _isSubmitted;
  String? get errorMessage => _errorMessage;
  
  // Valider le formulaire
  bool validateForm() {
    if (nameController.text.trim().isEmpty) {
      _errorMessage = 'Veuillez entrer votre nom';
      notifyListeners();
      return false;
    }
    if (emailController.text.trim().isEmpty) {
      _errorMessage = 'Veuillez entrer votre email';
      notifyListeners();
      return false;
    }
    if (!_isValidEmail(emailController.text.trim())) {
      _errorMessage = 'Email invalide';
      notifyListeners();
      return false;
    }
    if (messageController.text.trim().isEmpty) {
      _errorMessage = 'Veuillez entrer votre message';
      notifyListeners();
      return false;
    }
    _errorMessage = null;
    return true;
  }
  
  // Vérifier email
  bool _isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegExp.hasMatch(email);
  }
  
  // Envoyer le formulaire
  Future<void> submitForm() async {
    if (!validateForm()) return;
    
    _isLoading = true;
    notifyListeners();
    
    // Simuler l'envoi
    await Future.delayed(const Duration(seconds: 2));
    
    _isLoading = false;
    _isSubmitted = true;
    notifyListeners();
    
    // Réinitialiser après 3 secondes
    Future.delayed(const Duration(seconds: 3), () {
      _resetForm();
      notifyListeners();
    });
  }
  
  // Réinitialiser le formulaire
  void _resetForm() {
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    messageController.clear();
    _isSubmitted = false;
    _errorMessage = null;
  }
  
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    messageController.dispose();
    super.dispose();
  }
}