// /test/widget_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:africasoftdev_app/main.dart';

void main() {
  testWidgets('Vérifie que l\'application se lance correctement', 
    (WidgetTester tester) async {
    // Build notre widget et le lance
    await tester.pumpWidget(const AfricaSoftDevApp());
    
    // Vérifie que le texte AfricaSoftDEV est présent
    expect(find.text('AfricaSoftDEV'), findsOneWidget);
  });
  
  testWidgets('Vérifie la présence de la section services', 
    (WidgetTester tester) async {
    await tester.pumpWidget(const AfricaSoftDevApp());
    
    // Vérifie les titres des services
    expect(find.text('NOS SERVICES'), findsOneWidget);
    expect(find.text('Des solutions adaptées à vos besoins'), findsOneWidget);
  });
  
  testWidgets('Vérifie la présence des trois services', 
    (WidgetTester tester) async {
    await tester.pumpWidget(const AfricaSoftDevApp());
    
    expect(find.text('Web'), findsOneWidget);
    expect(find.text('Mobile'), findsOneWidget);
    expect(find.text('USSD'), findsOneWidget);
  });
  
  testWidgets('Vérifie la présence de la section expertises', 
    (WidgetTester tester) async {
    await tester.pumpWidget(const AfricaSoftDevApp());
    
    expect(find.text('NOS EXPERTISES'), findsOneWidget);
    expect(find.text('Production végétale'), findsOneWidget);
    expect(find.text('Élevage'), findsOneWidget);
  });
  
  testWidgets('Vérifie la présence de la section contact', 
    (WidgetTester tester) async {
    await tester.pumpWidget(const AfricaSoftDevApp());
    
    expect(find.text('CONTACTEZ-NOUS'), findsOneWidget);
    expect(find.text('Prêt à digitaliser votre exploitation ?'), findsOneWidget);
  });
}