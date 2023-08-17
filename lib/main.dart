import 'package:flutter/material.dart';
import 'package:frontend_challange/config/colors_config.dart';
import 'package:frontend_challange/pages/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Frontend Challange',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: slateGrey),
          useMaterial3: true,
        ),
        home: const LoginPage());
  }
}
