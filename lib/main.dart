import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodly_ui/CartModel.dart'; // Import CartModel
import 'package:foodly_ui/constants.dart';
import 'package:foodly_ui/screens/onboarding/onboarding_scrreen.dart';
import 'package:provider/provider.dart'; // Import Provider

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String realTimeValue = '0';
  String getOnceValue = '0';
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      
      create: (context) => CartModel(), 
      child: MaterialApp(
        title: 'CakeoFiesta',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: bodyTextColor),
            bodySmall: TextStyle(color: bodyTextColor),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.all(defaultPadding),
            hintStyle: TextStyle(color: bodyTextColor),
          ),
        ),
        home: const OnboardingScreen(),
      ),
    );
  }
}
