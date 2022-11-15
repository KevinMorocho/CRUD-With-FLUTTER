import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final TextEditingController _controller;
  final String _label;
  TextBox(this._controller, this._label); //Contructor
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        controller: this._controller,
        decoration: InputDecoration(
          filled: true,
          labelText: _label,
          suffix: GestureDetector(
            child: Icon(Icons.close),
            //Permite Eliminar el contenido que tiene el textbox
            onTap: () {
              _controller.clear();
            },
          )
        ),
      ),   
    );
  }
}