// /lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'core/themes/app_theme.dart';
import 'core/routes/app_routes.dart';
import 'presentation/viewmodels/home_viewmodel.dart';
import 'presentation/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Configuration pour PWA
  setUrlStrategy(PathUrlStrategy());
  
  runApp(const AfricaSoftDevApp());
}

class AfricaSoftDevApp extends StatelessWidget {
  const AfricaSoftDevApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
      ],
      child: MaterialApp.router(
        title: 'AfricaSoftDEV - Solutions Digitales Agricoles',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        routerConfig: AppRoutes.router,
      ),
    );
  }
}