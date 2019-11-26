
import 'package:flutter/material.dart';
import 'package:gestortarefas/components/editor.dart';
import 'package:gestortarefas/models/tarefa.dart';

const _tituloAppBar='Criando Tarefa';
const _textoLegendaCampo='Nova Tarefa';

class FormularioTarefa extends StatefulWidget {
  

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormularioTarefaState();
  }
}

class FormularioTarefaState extends State{
  final TextEditingController _controllerFieldTarefa = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Editor(_controllerFieldTarefa,_textoLegendaCampo),
            RaisedButton(
              child: Icon(Icons.check),
              onPressed: () => _criaTarefa(context),
              //color: Colors.orange,
              //textColor: Colors.yellow,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              splashColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  void _criaTarefa(BuildContext context) {
    final String tarefa = _controllerFieldTarefa.text;
    if(tarefa != null && tarefa !=''){
      final tarefaCriada = Tarefa(tarefa);
      Navigator.pop(context,tarefaCriada);
    }
  }
  
}