import 'package:flutter/material.dart';
import 'package:project_testt/desafio_page.dart';
import 'package:project_testt/home_page.dart';
import 'package:project_testt/login_page.dart';

class AppWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    theme: ThemeData(
   primarySwatch: Colors.blue, // Muda a cor principal para azul
    brightness: Brightness.dark
    ),
    initialRoute: '/desafio',
    routes: {
      '/': (context) => LoginPage(),
      '/home': (context) => HomePage(),
      '/desafio': (context) => DesafioPage()
    },
   );
  }
  
}