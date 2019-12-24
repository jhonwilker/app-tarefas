import 'package:flutter/material.dart';
import 'package:gestortarefas/models/tarefa.dart';
import 'package:gestortarefas/screens/tarefa/formulario.dart';

const _tituloAppBar = 'Minhas Tarefas';

class ListaTarefas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListaTarefasState();
  }
}

class ListaTarefasState extends State<ListaTarefas> {
  final List<Tarefa> _tarefas = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_tituloAppBar),
      ),
      body: ListView.separated(
        itemCount: _tarefas.length,
        separatorBuilder: (context, indice)=>Divider( color: Colors.black,),
        itemBuilder: (context, indice) {
          final tarefa = _tarefas[indice];
          return ItemTarefa(tarefa);
        },
      ),
      floatingActionButton: FloatingActionButton(
        //backgroundColor: Colors.orange,
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTarefa();
          })).then((tarefaRecebida) {
            if (tarefaRecebida != null) {
              setState(() {
                _tarefas.add(tarefaRecebida);
              });
            }
          });
        },
      ),
    );
  }
}

class ItemTarefa extends StatelessWidget {
  final Tarefa _tarefa;

  ItemTarefa(this._tarefa);
  @override
  Widget build(BuildContext context) {
    return ListTile(
              title: Text(_tarefa.tarefa.toString()),
              trailing: Icon(Icons.delete),
            );
  }
}
