import 'package:crud_en_flutter/text_box.dart';
import 'package:flutter/material.dart';

class RegistrarCliente extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _RegistrarCliente();

}

class _RegistrarCliente extends State<RegistrarCliente>{
  late TextEditingController controllerNombre;
  late TextEditingController controllerApellido;
  late TextEditingController controllerTelefono;
  @override
  void initState() {
    controllerNombre = new TextEditingController();
    controllerApellido = new TextEditingController();
    controllerTelefono = new TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrar Cliente"),
      ),
    body: ListView(
      children: [
        TextBox(controllerNombre, "Nombre"),
        TextBox(controllerApellido, "Apellido"),
        TextBox(controllerTelefono, "Telefono")
      ],
    ),
    );
  }

}