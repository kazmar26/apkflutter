// /lib/core/routes/app_routes.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/screens/home_screen.dart';
import '../../presentation/screens/services_screen.dart';
import '../../presentation/screens/contact_screen.dart';
import '../../presentation/screens/expertise_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String services = '/services';
  static const String contact = '/contact';
  static const String expertise = '/expertise';
  
  static final GoRouter router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        name: 'home',
        path: home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: 'services',
        path: services,
        builder: (context, state) => const ServicesScreen(),
      ),
      GoRoute(
        name: 'contact',
        path: contact,
        builder: (context, state) => const ContactScreen(),
      ),
      GoRoute(
        name: 'expertise',
        path: expertise,
        builder: (context, state) => const ExpertiseScreen(),
      ),
    ],
  );
}