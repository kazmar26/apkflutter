// /lib/data/models/contact_model.dart

class ContactModel {
  final String id;
  final String name;
  final String email;
  final String? phone;
  final String message;
  final DateTime createdAt;
  
  ContactModel({
    required this.id,
    required this.name,
    required this.email,
    this.phone,
    required this.message,
    required this.createdAt,
  });
  
  // Convertir JSON en objet
  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      message: json['message'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
  
  // Convertir objet en JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'message': message,
      'createdAt': createdAt.toIso8601String(),
    };
  }
  
  // Valider le contact
  bool isValid() {
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return name.isNotEmpty && 
           emailRegExp.hasMatch(email) && 
           message.isNotEmpty;
  }
}

class ContactInfo {
  final String email;
  final String phone;
  final String whatsapp;
  final String address;
  final Map<String, String> socialMedia;
  
  ContactInfo({
    required this.email,
    required this.phone,
    required this.whatsapp,
    required this.address,
    required this.socialMedia,
  });
  
  static ContactInfo getDefault() {
    return ContactInfo(
      email: 'contact@africasoftdev.com',
      phone: '+225 07 07 07 07 07',
      whatsapp: 'https://wa.me/2250707070707',
      address: 'Abidjan, Côte d\'Ivoire',
      socialMedia: {
        'facebook': 'https://facebook.com/africasoftdev',
        'linkedin': 'https://linkedin.com/company/africasoftdev',
        'instagram': 'https://instagram.com/africasoftdev',
        'twitter': 'https://twitter.com/africasoftdev',
      },
    );
  }
}