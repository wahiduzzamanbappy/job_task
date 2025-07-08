import 'package:flutter/material.dart';
import 'package:job_task/ui/screens/challengingPart_selection_screen.dart';
import 'package:job_task/ui/screens/mood_selection_screen.dart';
import 'package:job_task/ui/screens/reset_plan_screen.dart';
import 'package:job_task/ui/screens/routine_screen.dart';
import 'package:job_task/ui/screens/wake_up_screen.dart';
import 'package:job_task/ui/screens/welcome_splash_screens.dart';
import '../ui/screens/home_screen.dart';
import '../ui/screens/primary_goal_screen.dart';
import '../ui/screens/splash_screen.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    late Widget route;
    if (settings.name == SplashScreen.name) {
      route = const SplashScreen();
    }  else if (settings.name == WelcomeScreen.name) {
      route = const WelcomeScreen();
    } else if (settings.name == MoodSelectionScreen.name) {
      route =  MoodSelectionScreen();
    } else if (settings.name == ChallengingPathSelectionScreen.name) {
      route = ChallengingPathSelectionScreen();
    } else if (settings.name == RoutineScreen.name) {
      route = RoutineScreen();
    } else if (settings.name == WakeUpScreen.name) {
      route = WakeUpScreen();
    } else if (settings.name == PrimaryGoalScreen.name) {
      route = PrimaryGoalScreen();
    } else if (settings.name == ResetPlanScreen.name) {
      route = ResetPlanScreen();
    } else if (settings.name == HomeScreen.name) {
      route = HomeScreen();
    }

    return MaterialPageRoute(
      builder: (context) {
        return route;
      },
    );
  }
}