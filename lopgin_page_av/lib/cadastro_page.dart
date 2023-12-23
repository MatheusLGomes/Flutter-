import 'package:flutter/material.dart';
import 'DatabaseHelper.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _dataNascimentoController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _enderecoController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _cadastroSenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Cadastro de Usuário'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(27),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 56, 169, 150),
              Color.fromARGB(255, 166, 201, 187),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _nomeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Nome Completo',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _dataNascimentoController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Data de Nascimento',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'E-mail',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _enderecoController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Endereço',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _senhaController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Senha',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _cadastroSenhaController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Confirme a Senha',
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  String nome = _nomeController.text;
                  String dataNascimento = _dataNascimentoController.text;
                  String email = _emailController.text;
                  String endereco = _enderecoController.text;
                  String senha = _senhaController.text;

                  if (nome.isNotEmpty &&
                      dataNascimento.isNotEmpty &&
                      email.isNotEmpty &&
                      endereco.isNotEmpty &&
                      senha.isNotEmpty &&
                      senha == _cadastroSenhaController.text) {
                    Map<String, dynamic> newUser = {
                      'nome': nome,
                      'data_nascimento': dataNascimento,
                      'email': email,
                      'endereco': endereco,
                      'senha': senha,
                    };

                    int userId =
                        await DatabaseHelper.instance.insertUser(newUser);

                    if (userId != -1) {
                      // O cadastro foi bem-sucedido
                      print("Usuário cadastrado com sucesso! ID: $userId");
                    } else {
                      // Ocorreu um erro durante o cadastro
                      print("Erro ao cadastrar o usuário.");
                    }
                  } else {
                    print("Preencha todos os campos corretamente.");
                  }
                },
                child: const Text('Cadastrar o Usuário'),
              ),
            ),
            const SizedBox(height: 7),
            Center(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white70, width: 0.8),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Voltar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
