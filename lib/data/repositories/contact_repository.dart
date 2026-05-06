// /lib/data/repositories/contact_repository.dart

import '../models/contact_model.dart';

class ContactRepository {
  // Simuler une base de données locale
  static List<ContactModel> _contacts = [];
  
  // Envoyer un message de contact
  Future<bool> sendContactMessage(ContactModel contact) async {
    // Simuler un délai réseau
    await Future.delayed(const Duration(seconds: 1));
    
    try {
      // Vérifier si le message est valide
      if (!contact.isValid()) {
        return false;
      }
      
      // Sauvegarder le message
      _contacts.add(contact);
      
      // Simuler l'envoi à une API
      print('Message envoyé: ${contact.name} - ${contact.email}');
      
      return true;
    } catch (e) {
      print('Erreur lors de l\'envoi: $e');
      return false;
    }
  }
  
  // Récupérer tous les messages de contact
  Future<List<ContactModel>> getAllMessages() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _contacts;
  }
  
  // Compter le nombre de messages
  Future<int> getMessagesCount() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return _contacts.length;
  }
  
  // Supprimer un message
  Future<void> deleteMessage(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    _contacts.removeWhere((contact) => contact.id == id);
  }
  
  // Informations de contact par défaut
  ContactInfo getContactInfo() {
    return ContactInfo.getDefault();
  }
}