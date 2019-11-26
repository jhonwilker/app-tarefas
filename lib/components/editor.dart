
import 'package:flutter/material.dart';

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
          //cursorColor: Colors.orange,
          style: TextStyle(
            fontSize: 24.0,
          ),
          decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            labelStyle: TextStyle(
            fontSize: 24.0,
            //color: Colors.orange,          
          ),
          labelText: _rotulo,
          ),
        ),
  );
  }
}