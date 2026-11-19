import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
    const AboutPage({super.key});

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(title: const Text('Sobre')),
        body: Padding(
          padding: const EdgeInsets.all(24),
        child: Column(
            children: [
              const Spacer(flex: 2),
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  color: Color(0xFF2E7D32),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.location_on_outlined,
                  size: 48,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                  'Paraná em Números',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            const SizedBox(height:16),
            const Text(
              'Lista cidades do Paraná com seus habitantes e traz uma saudação perfonalizada.',
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 3),
            const Text(
              'Versão 1.0.0',
              style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      );
    }
}