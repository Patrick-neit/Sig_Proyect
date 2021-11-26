import 'package:flutter/material.dart';
import 'package:sig_proyect/global_var.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TipoEmergencia extends StatefulWidget {
  const TipoEmergencia({Key? key}) : super(key: key);

  @override
  _TipoEmergenciaState createState() => _TipoEmergenciaState();
}

class _TipoEmergenciaState extends State<TipoEmergencia> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Servicios disponibles' + tipousuario),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('OUR SERVICES'),
              Image.asset(
                'assets/images/bomberos.jpeg',
                height: 100.0,
              ),
              _buttobomberos(),
              const SizedBox(
                height: 15.0,
              ),
              Image.asset(
                'assets/images/policia.jpeg',
                height: 100.0,
              ),
              _buttopolicia(),
              const SizedBox(
                height: 15.0,
              ),
              Image.asset(
                'assets/images/ambulancia.jpeg',
                height: 100.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              _buttomambulance(),
            ],
          ),
        ),
      ),
    );
  }

  void sendmyubication() async {
    var url =
        Uri.parse('http://10.0.2.2:8000/send/solicitud_emergencia/usuario');
    var response = await http.post(url);
    var data = json.decode(response.body);
  }

  Widget _buttobomberos() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      // ignore: deprecated_member_use
      return RaisedButton(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: const Text('Solicitar Bombero'),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10.0,
          color: Colors.redAccent,
          onPressed: () async {
            sendmyubication();
            Navigator.pushReplacementNamed(context, '/mylocation_maps');
          });
    });
  }
}

Widget _buttopolicia() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    // ignore: deprecated_member_use
    return RaisedButton(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: const Text('Solicitar Patrulla'),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10.0,
        color: Colors.lightBlueAccent,
        onPressed: () {
          //Navigator.pushReplacementNamed(context, '/register_user_page');
        });
  });
}

Widget _buttomambulance() {
  return StreamBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
    // ignore: deprecated_member_use
    return RaisedButton(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: const Text('Solicitar Ambulancia'),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10.0,
        color: Colors.yellowAccent,
        onPressed: () {
          // Navigator.pushReplacementNamed(context, '/register_user_page');
        });
  });
}
