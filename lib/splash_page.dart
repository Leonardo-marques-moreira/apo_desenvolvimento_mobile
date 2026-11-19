import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage ({super.key});

  @override
  State <SplashPage> createState() => _SplashPageState();
  }
  class _SplashPageState extends State<SplashPage> {
    @override
    void initState() {
      super.initState();
      _iniciar();
    }

    Future<void> _iniciar() async {
      await Future.delayed(const Duration(seconds: 3));
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Container(
            width: 160,
            height: 160,
            decoration: const BoxDecoration(
              color: Color(0xFFFAFAFA),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.location_on_outlined,
              size: 56,
              color: Colors.green,
            ),
          ),
        ),
      );
    }
  }

