import 'package:fl_components/screens/app_router.dart';
import 'package:fl_components/screens/home_screen.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRouter.initialRoute,
        home: const HomeScreen(),
        routes: AppRouter.getAppRoutes(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        theme: AppTheme.lightTheme);
  }
}
