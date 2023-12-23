import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({super.key});

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  int _sexoUsuario=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Select the alternative that matches the image:'),
      ),
      
      body: Container(

         child:  Column(
        
            children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/imagens/porta.jpg'),
                  ),
                  RadioListTile(
                    title: const Text('boll'),
                    value: 1,
                    groupValue: _sexoUsuario,
                    onChanged: (escolha){
                      setState(() {
                          _sexoUsuario = 1;
                          print(_sexoUsuario);
                      });
                    }
                    ),
                    RadioListTile(
                      title: const Text('Door'),
                      value: 2,
                      groupValue: _sexoUsuario,
                      onChanged: (escolha){
                            setState(() {
                              _sexoUsuario=2;
                              print(_sexoUsuario);
                            });
                      }
                      ),
                      RadioListTile(
                      title: const Text('Sofá'),
                      value: 2,
                      groupValue: _sexoUsuario,
                      onChanged: (escolha){
                            setState(() {
                              _sexoUsuario=2;
                              print(_sexoUsuario);
                            });
                      }
                      ),
                      RadioListTile(
                      title: const Text('Bad'),
                      value: 2,
                      groupValue: _sexoUsuario,
                      onChanged: (escolha){
                            setState(() {
                              _sexoUsuario=2;
                              print(_sexoUsuario);
                            });
                      }
                      )
            ],
         ),
      ) ,
    );
  }
}