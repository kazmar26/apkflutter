// /lib/data/models/service_model.dart

class ServiceModel {
  final String id;
  final String title;
  final String description;
  final String iconCode;
  final String colorHex;
  final List<String> features;
  
  ServiceModel({
    required this.id,
    required this.title,
    required this.description,
    required this.iconCode,
    required this.colorHex,
    required this.features,
  });
  
  // Convertir JSON en objet
  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      iconCode: json['iconCode'],
      colorHex: json['colorHex'],
      features: List<String>.from(json['features']),
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
      'features': features,
    };
  }
  
  // Données par défaut
  static List<ServiceModel> getDefaultServices() {
    return [
      ServiceModel(
        id: '1',
        title: 'Web',
        description: 'Sites web et applications puissantes et sécurisées',
        iconCode: 'Icons.web',
        colorHex: '#2196F3',
        features: ['Site vitrine', 'E-commerce', 'Application web', 'Dashboard admin'],
      ),
      ServiceModel(
        id: '2',
        title: 'Mobile',
        description: 'Applications Android performantes & intuitives',
        iconCode: 'Icons.phone_android',
        colorHex: '#4CAF50',
        features: ['Android native', 'Cross-platform', 'UI/UX design', 'API intégration'],
      ),
      ServiceModel(
        id: '3',
        title: 'USSD',
        description: 'Solutions accessibles à tous, même sans internet',
        iconCode: 'Icons.signal_cellular_alt',
        colorHex: '#FF9800',
        features: ['Menus USSD', 'SMS gateway', 'Service hors ligne', 'Zone rurale'],
      ),
    ];
  }
}