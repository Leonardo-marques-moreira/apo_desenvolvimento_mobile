import 'package:flutter/material.dart';

import 'about_page.dart';
import 'saudacao_page.dart';
import 'cidades_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _abaAtual = 0;

  final List<Widget> _abas = [const CidadesPage(), const SaudacaoPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paraná em Números'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (valor) {
              if (valor == 'sobre') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              }
            },
            itemBuilder: (context) => const [
              PopupMenuItem(value: 'sobre', child: Text('Sobre')),
            ],
          ),
        ],
      ),
      body: _abas[_abaAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _abaAtual,
        selectedItemColor: Color(0xFF2E7D32),
        unselectedItemColor: Colors.grey,
        onTap: (indice) {
          setState(() {
            _abaAtual = indice;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Cidades'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Saudação'),
        ],
      ),
    );
  }
}
