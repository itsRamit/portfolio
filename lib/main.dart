import 'package:flutter/material.dart';
import 'package:portfolio/responsive/Tablet/tab_layout.dart';
import 'package:portfolio/responsive/Web/desktop_layout.dart';
import 'package:portfolio/responsive/Mobile/mobile_layout.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/responsive/splash/splashScreen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://syfrrvdtmschpylufahr.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InN5ZnJydmR0bXNjaHB5bHVmYWhyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDEzNjk0MzYsImV4cCI6MjAxNjk0NTQzNn0.wsD8djMCBlgbImZoaaEtawAO2rKaLfAGVZPeg-DXfNA",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        dividerTheme: DividerThemeData(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashView(),
    );
  }
}
