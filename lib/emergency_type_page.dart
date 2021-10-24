import 'package:flutter/material.dart';

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
          title: const Text('Servicios disponibles'),
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
          onPressed: () {
            // Navigator.pushReplacementNamed(context, '/register_user_page');
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
