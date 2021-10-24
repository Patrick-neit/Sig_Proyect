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
              Flexible(
                child: Image.asset(
                  'assets/images/bomberos.jpeg',
                  height: 200.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
