import 'package:flutter/material.dart';

import 'core/routing/app_routing.dart';
import 'features/on_boarding/presentation/screens/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouting.onGenerateRoute,
      home: const OnBoardingScreen(),
    );
  }
}
