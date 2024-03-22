import 'package:flutter/material.dart';
import 'package:halakat/ui/pages/home_page.dart';
import 'package:halakat/ui/pages/memorize_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MemorizePage(),
    );
  }
}
