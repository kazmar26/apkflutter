// /lib/presentation/viewmodels/home_viewmodel.dart
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  bool _isLoading = false;
  
  bool get isLoading => _isLoading;
  
  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
  
  Future<void> loadData() async {
    setLoading(true);
    // Simuler chargement de données
    await Future.delayed(const Duration(seconds: 1));
    setLoading(false);
  }
}