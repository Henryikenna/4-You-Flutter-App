import 'package:flutter/material.dart';
import 'package:flutter_4you_app/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_4you_app/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sms_autofill/sms_autofill.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SmsAutoFill().listenForCode;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '4You',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ProjectColors.mainOrange),
        // useMaterial3: true,
        // fontFamily: GoogleFonts.interTextTheme
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
      
      ),
      home: const OnboardingScreen(),
    );
  }
}