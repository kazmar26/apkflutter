// /lib/data/repositories/service_repository.dart

import '../models/service_model.dart';

class ServiceRepository {
  // Simuler une base de données locale
  static List<ServiceModel> _services = ServiceModel.getDefaultServices();
  
  // Récupérer tous les services
  Future<List<ServiceModel>> getServices() async {
    // Simuler un délai réseau
    await Future.delayed(const Duration(milliseconds: 500));
    return _services;
  }
  
  // Récupérer un service par ID
  Future<ServiceModel?> getServiceById(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return _services.firstWhere((service) => service.id == id);
    } catch (e) {
      return null;
    }
  }
  
  // Ajouter un service
  Future<void> addService(ServiceModel service) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _services.add(service);
  }
  
  // Mettre à jour un service
  Future<void> updateService(ServiceModel service) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _services.indexWhere((s) => s.id == service.id);
    if (index != -1) {
      _services[index] = service;
    }
  }
  
  // Supprimer un service
  Future<void> deleteService(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _services.removeWhere((service) => service.id == id);
  }
}