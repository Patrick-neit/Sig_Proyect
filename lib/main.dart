import 'package:flutter/material.dart';
import 'package:sig_proyect/emergency_type_page.dart';
import 'package:sig_proyect/login_page.dart';
import 'package:sig_proyect/register_user_page.dart';

void main() {
  runApp(const SigApp());
}

class SigApp extends StatelessWidget {
  const SigApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIG|MAPS',
      home: const SigLoginPage(),
      routes: <String, WidgetBuilder>{
        '/loginpage': (BuildContext context) => const SigLoginPage(),
        '/register_user_page': (BuildContext context) =>
            const RegisterUserPage(),
        '/emergency_type_page': (BuildContext context) =>
            const TipoEmergencia(),
        '/login_page': (BuildContext context) => const LoginPage()
      },
    );
  }
}

class SigLoginPage extends StatefulWidget {
  const SigLoginPage({Key? key}) : super(key: key);

  @override
  _SigLoginState createState() => _SigLoginState();
}

class _SigLoginState extends State<SigLoginPage> {
  TextEditingController controllerId = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('WELLCOME TO YOUR FIRST AID APP'),
              Flexible(
                child: Image.asset(
                  'assets/images/logoaid.png',
                  height: 200.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              _bottomRegister(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomRegister() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      // ignore: deprecated_member_use
      return RaisedButton(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: const Text('Registrate'),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10.0,
          color: Colors.lightBlueAccent,
          onPressed: () {
            //Aqui tenemos q llamar a la funcion login
            Navigator.pushReplacementNamed(context, '/register_user_page');
            // Login();
          });
    });
  }
}
