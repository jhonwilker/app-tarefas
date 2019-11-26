import 'package:flutter/material.dart';
import 'package:gestortarefas/screens/tarefas/lista.dart';

void main() => runApp(MinhasTarefasApp());

class MinhasTarefasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Colors.orange,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.orange,
          textTheme: ButtonTextTheme.primary
        ),
      ),
      home: ListaTarefas(),
    );
  }
}