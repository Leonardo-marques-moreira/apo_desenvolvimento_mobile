import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int _abaAtual = 0;

    final List<Widget> _abas = const [
      Center(child: Text('Cidades')),
      Center(child: Text('Saudação')),
    ];

@override
  Widget build (BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        title: const Text('Paraná em Números')),
        body:  _abas[_abaAtual],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _abaAtual,
          selectedItemColor:  Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: (indice) {
            setState(() {
              _abaAtual = indice;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Cidades',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Saudação',
            ),
          ],
        ),
      );
    }
  }