import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APO Desenvolvimento Mobile',
      theme: ThemeData(
       useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor:  Colors.indigo),
      ),
      home: const Scaffold(
        body: Center
          (child:Text('Projeto iniciado')),
      ),
    );
  }
}
