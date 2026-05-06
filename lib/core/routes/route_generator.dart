// /lib/core/routes/route_generator.dart
import 'package:flutter/material.dart';
import '../../presentation/screens/home_screen.dart';
import '../../presentation/screens/services_screen.dart';
import '../../presentation/screens/contact_screen.dart';
import '../../presentation/screens/expertise_screen.dart';
import '../../presentation/screens/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/services':
        return MaterialPageRoute(builder: (_) => const ServicesScreen());
      case '/contact':
        return MaterialPageRoute(builder: (_) => const ContactScreen());
      case '/expertise':
        return MaterialPageRoute(builder: (_) => const ExpertiseScreen());
      default:
        return _errorRoute();
    }
  }
  
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Erreur')),
        body: const Center(
          child: Text('Page non trouvée'),
        ),
      );
    });
  }
}