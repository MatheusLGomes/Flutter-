import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({super.key});

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _1 =false;
  bool _2 = false;
  bool _3 = false;
  bool _4 = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Escolha as frases que estão corretas gramaticalmente:"),
      ),
      body: Container(
        child: Column(
            children: <Widget>[
                  CheckboxListTile(
                    title: const Text('1'),
                    subtitle: const Text('Exemplo 01'),
                    value: _1,
                    onChanged: (valor){
                        setState(() {
                         _1 = true;
                        });
                    }
                    ),
                    CheckboxListTile(
                      title: const Text('2'),
                      subtitle: const Text('Exemplo 02'),
                      value: _2,
                      onChanged: (valor){
                        setState(() {
                          _2 =true;
                        });
                      }
                      ),
                      CheckboxListTile(
                      title: const Text('3'),
                      subtitle: const Text('Exemplo 03'),
                      value: _3,
                      onChanged: (valor){
                        setState(() {
                         _3 = true;
                        });
                      }
                      ),
                       CheckboxListTile(
                      title: const Text('4'),
                      subtitle: const Text('Exemplo 04'),
                      value: _4,
                      onChanged: (valor){
                        setState(() {
                          _4 = true;
                        });
                      }
                      )
            ],
        ),
      ),
    );
  }
}