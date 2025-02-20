import 'package:flutter/material.dart';
import 'package:template_project/pages/about.dart';
import 'package:template_project/pages/buku.dart';
import 'package:template_project/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'perpustakaan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/buku': (context) => bukupage(),
        '/about': (context) => About()
      },
    );
  }
}
