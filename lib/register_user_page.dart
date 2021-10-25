import 'package:flutter/material.dart';

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({Key? key}) : super(key: key);

  @override
  _RegisterUserPageState createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerFirstName = TextEditingController();
  TextEditingController controllerSecondName = TextEditingController();
  TextEditingController controllerCi = TextEditingController();
  TextEditingController controllerCiExp = TextEditingController();
  TextEditingController controllerCellphone = TextEditingController();
  TextEditingController controllerAdress = TextEditingController();
  TextEditingController controllerGener = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Please Fill The Form'),
        ),
        body: Column(
          children: [
            const Text('Ingrese sus datos!'),
            _nametextfield(),
            const SizedBox(
              height: 2.0,
            ),
            _bottomSubmit(),
            const SizedBox(
              height: 2.0,
            ),
            _firstnametextfield(),
            const SizedBox(
              height: 2.0,
            ),
            _secondnametextfield(),
            const SizedBox(
              height: 2.0,
            ),
            _citextfield(),
            const SizedBox(
              height: 2.0,
            ),
            _ciexptextfield(),
            const SizedBox(
              height: 2.0,
            ),
            _cellphonetextfield(),
            const SizedBox(
              height: 2.0,
            ),
            _adresstextfield(),
            const SizedBox(
              height: 2.0,
            ),
            _genertextfield(),
            const SizedBox(
              height: 2.0,
            ),
            _emailtextfield(),
            const SizedBox(
              height: 2.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _nametextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            controller: controllerName,
            decoration: InputDecoration(
              labelText: 'Name',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: Colors.grey[300],
              filled: true,
              //hintText: "Ingresa fecha final vacacional"
            ),
          ));
    });
  }

  Widget _firstnametextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            controller: controllerFirstName,
            decoration: InputDecoration(
              labelText: 'Apellido Paterno',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: Colors.grey[300],
              filled: true,
              //hintText: "Ingresa fecha final vacacional"
            ),
          ));
    });
  }

  Widget _secondnametextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            controller: controllerSecondName,
            decoration: InputDecoration(
              labelText: 'Apellido Materno',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: Colors.grey[300],
              filled: true,
              //hintText: "Ingresa fecha final vacacional"
            ),
          ));
    });
  }

  Widget _citextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            controller: controllerCi,
            decoration: InputDecoration(
              labelText: 'Carnet Identidad',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: Colors.grey[300],
              filled: true,
              //hintText: "Ingresa fecha final vacacional"
            ),
          ));
    });
  }

  Widget _ciexptextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            controller: controllerCiExp,
            decoration: InputDecoration(
              labelText: 'Expedido',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: Colors.grey[300],
              filled: true,
              //hintText: "Ingresa fecha final vacacional"
            ),
          ));
    });
  }

  Widget _cellphonetextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            controller: controllerCellphone,
            decoration: InputDecoration(
              labelText: 'Celular',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: Colors.grey[300],
              filled: true,
              //hintText: "Ingresa fecha final vacacional"
            ),
          ));
    });
  }

  Widget _adresstextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            controller: controllerAdress,
            decoration: InputDecoration(
              labelText: 'Direccion',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: Colors.grey[300],
              filled: true,
              //hintText: "Ingresa fecha final vacacional"
            ),
          ));
    });
  }

  Widget _genertextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            controller: controllerGener,
            decoration: InputDecoration(
              labelText: 'Genero',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: Colors.grey[300],
              filled: true,
              //hintText: "Ingresa fecha final vacacional"
            ),
          ));
    });
  }

  Widget _emailtextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            controller: controllerEmail,
            decoration: InputDecoration(
              labelText: 'Correo Electronico',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: Colors.grey[300],
              filled: true,
              //hintText: "Ingresa fecha final vacacional"
            ),
          ));
    });
  }

  Widget _bottomSubmit() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      // ignore: deprecated_member_use
      return RaisedButton(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: const Text('Submit'),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10.0,
          color: Colors.greenAccent,
          onPressed: () {
            //Aqui tenemos q llamar a la funcion login
            Navigator.pushReplacementNamed(context, '/login_page');
            // Login();
          });
    });
  }
}
