import 'package:flutter/material.dart';


class SaudacaoPage extends StatefulWidget{
  const SaudacaoPage({super.key});

  @override
  State<SaudacaoPage> createState() => _SaudacaoPageState();
}

  class _SaudacaoPageState extends State<SaudacaoPage>{
    final TextEditingController _controller = TextEditingController();
    String? _nome;
    String? _erro;

    void _confirmar(){
      final texto = _controller.text.trim();
      setState(() {
        if (texto.isEmpty){
          _erro = 'Informe o seu nome';
        } else {
          _erro = null;
          _nome = texto;
        }
      });
    }

    void  _resetar(){
      setState(() {
        _nome = null;
        _erro = null;
        _controller.clear();
      });
    }

    @override
    void dispose (){
      _controller.dispose();
      super.dispose();
    }
    @override
    Widget build(BuildContext context){
      if(_nome != null) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Olá, $_nome!',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2E7D32),
                ),
              ),
              const SizedBox(height: 16),
              OutlinedButton(
                  onPressed:_resetar, child: const Text('Resetar'),
              ),
            ],
          ),
        );
      }

      return Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Digite o seu nome',
                  hintStyle: TextStyle(
                    color: _erro != null ? Colors.red : null
                  ),
                  errorText: _erro,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _confirmar,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade600,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('Ok'),
                ),
              ),
            ],
          ),
      );
    }
}