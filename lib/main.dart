import 'package:flutter/material.dart';
import 'package:todo_app_2/core/app%20theme/application%20theme.dart';
import 'package:todo_app_2/ui/home%20layout/home%20layout.dart';
import 'package:todo_app_2/ui/splash/splash_screen.dart';
//01:28:50

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
      },
    );
  }
}
