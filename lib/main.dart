import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_page.dart';
import 'sign_up_page.dart';
import 'home_page.dart';
import 'add_medicine_page.dart';
import 'calendar_page.dart';

void main() => runApp(const MedicationApp());

class MedicationApp extends StatelessWidget {
  const MedicationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medication Reminder',
      
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
        '/add-medicine': (context) => const AddMedicinePage(),
        '/calendar': (context) => const CalendarPage(),
      },
    );
  }
}
