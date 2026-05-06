// /lib/data/models/expertise_model.dart

class ExpertiseModel {
  final String id;
  final String title;
  final String description;
  final String iconCode;
  final String colorHex;
  final List<String> subServices;
  
  ExpertiseModel({
    required this.id,
    required this.title,
    required this.description,
    required this.iconCode,
    required this.colorHex,
    required this.subServices,
  });
  
  // Convertir JSON en objet
  factory ExpertiseModel.fromJson(Map<String, dynamic> json) {
    return ExpertiseModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      iconCode: json['iconCode'],
      colorHex: json['colorHex'],
      subServices: List<String>.from(json['subServices']),
    );
  }
  
  // Convertir objet en JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'iconCode': iconCode,
      'colorHex': colorHex,
      'subServices': subServices,
    };
  }
  
  // Données par défaut
  static List<ExpertiseModel> getDefaultExpertises() {
    return [
      ExpertiseModel(
        id: '1',
        title: 'Production végétale',
        description: 'Suivi des cultures, conseils agronomiques, gestion des parcelles',
        iconCode: 'Icons.agriculture',
        colorHex: '#4CAF50',
        subServices: ['Suivi météo', 'Conseils cultures', 'Alertes maladies', 'Calendrier agricole'],
      ),
      ExpertiseModel(
        id: '2',
        title: 'Élevage',
        description: 'Suivi du bétail, santé animale, alimentation et reproduction',
        iconCode: 'Icons.pets',
        colorHex: '#FF9800',
        subServices: ['Santé animale', 'Alimentation', 'Reproduction', 'Gestion troupeau'],
      ),
      ExpertiseModel(
        id: '3',
        title: 'Commercialisation',
        description: 'Gestion des stocks, ventes, acheteurs et marchés',
        iconCode: 'Icons.shopping_cart',
        colorHex: '#2196F3',
        subServices: ['Marché local', 'Prix en temps réel', 'Mise en relation', 'Logistique'],
      ),
      ExpertiseModel(
        id: '4',
        title: 'Suivi & Analyses',
        description: 'Données, rapports et tableaux de bord pour mieux décider',
        iconCode: 'Icons.analytics',
        colorHex: '#9C27B0',
        subServices: ['Dashboard', 'Indicateurs clés', 'Prévisions', 'Rapports exportables'],
      ),
    ];
  }
}