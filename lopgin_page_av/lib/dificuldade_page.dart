// difficulty_selection_page.dart
import 'package:flutter/material.dart';

class DifficultySelectionPage extends StatelessWidget {
  const DifficultySelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seleção de Nível de Dificuldade'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _handleDifficultySelection(context, 'Iniciante');
              },
              child: Text('Iniciante'),
            ),
            ElevatedButton(
              onPressed: () {
                _handleDifficultySelection(context, 'Intermediário');
              },
              child: Text('Intermediário'),
            ),
            ElevatedButton(
              onPressed: () {
                _handleDifficultySelection(context, 'Avançado');
              },
              child: Text('Avançado'),
            ),
          ],
        ),
      ),
    );
  }

  void _handleDifficultySelection(BuildContext context, String selectedDifficulty) {
    // Aqui você pode implementar a lógica para lidar com a seleção do nível de dificuldade
    // Por exemplo, você pode navegar de volta para a tela de login com o nível de dificuldade selecionado.
    Navigator.pop(context, selectedDifficulty);
  }
}
