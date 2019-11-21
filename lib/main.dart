import 'package:flutter/material.dart';

void main() => runApp(MinhasTarefasApp());

class MinhasTarefasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      home: Scaffold(
        body: FormularioTarefa(),
      ),
    );
  }
}

class FormularioTarefa extends StatelessWidget {
  final TextEditingController _controllerFieldTarefa = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Tarefa'),
      ),
      body: Column(
        children: <Widget>[
          Editor(_controllerFieldTarefa,'Nova Tarefa'),
          RaisedButton(
            child: Icon(Icons.check),
            onPressed: () => _criaTarefa(),
            color: Colors.orange,
            textColor: Colors.yellow,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            splashColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  void _criaTarefa() {
    final String tarefa = _controllerFieldTarefa.text;
    if(tarefa != null && tarefa !=''){
      final tarefaCriada = Tarefa(tarefa);
      debugPrint('$tarefaCriada');
    }
  }
}

class ListaTarefas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Tarefas'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('Tarefa 1'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Tarefa 2'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

class Tarefa{

  final String tarefa;

  Tarefa(this.tarefa);

  @override
  String toString() {
    return 'Tarefa{tarefa: $tarefa}';
  }
 
}
class Editor extends StatelessWidget {

  final TextEditingController _controlador;
  
  final String _rotulo;

  Editor(this._controlador,this._rotulo);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: _controlador,
          cursorColor: Colors.orange,
          style: TextStyle(
            fontSize: 24.0,
          ),
          decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            labelStyle: TextStyle(
            fontSize: 24.0,
            color: Colors.orange,          
          ),
          labelText: _rotulo,
          ),
        ),
  );
  }
}