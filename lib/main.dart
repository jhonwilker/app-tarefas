import 'package:flutter/material.dart';
import 'package:gestortarefas/screens/tarefa/lista.dart';

void main() => runApp(MinhasTarefasApp());
//jhonwilker
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