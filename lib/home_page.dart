import 'package:crud_en_flutter/registrar_cliente.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String _title;
  HomePage(this._title);
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  List<Cliente> clientes = [
    Cliente(nombre: 'Will', apellido: 'Mora', telefono: '302 454 25 93'),
    Cliente(nombre: 'Sam', apellido: 'Perez', telefono: '322 412 34 68'),
    Cliente(nombre: 'Marlon', apellido: 'Gutierrez', telefono: '301 441 36 98'),
    Cliente(nombre: 'Jhon', apellido: 'Segura', telefono: '310 789 90 62')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: ListView.builder(
          itemCount: clientes.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {}, //Modificar
              onLongPress: () {}, //Eliminar

              title:
                  Text(clientes[index].nombre + " " + clientes[index].apellido),
              subtitle: Text(clientes[index].telefono),
              leading: CircleAvatar(
                child: Text(clientes[index].nombre.substring(0, 1)),
              ),
              trailing: Icon(
                Icons.view_agenda,
                color: Colors.blue,
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => RegistrarCliente()));
        },
        tooltip: "Agregar Cliente",
        child: Icon(Icons.add),
      ),
    );
  }
}

class Cliente {
  var nombre;
  var apellido;
  var telefono;

  Cliente({this.nombre, this.apellido, this.telefono});
}
