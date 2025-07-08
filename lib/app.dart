import 'package:flutter/material.dart';
import 'package:job_task/ui/screens/splash_screen.dart';
import 'package:job_task/ui/screens/welcome_splash_screens.dart';
import 'ui/screens/mode_selection_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intricate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/mood': (context) => MoodSelectionScreen(),
      },
    );
  }
}
