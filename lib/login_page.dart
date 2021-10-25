import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerUser = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lets Log In!'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 80.0,
            ),
            const Text('Ingrese sus datos!'),
            const SizedBox(
              height: 20.0,
            ),
            Image.asset(
              'assets/images/login.jpeg',
              height: 200.0,
            ),
            _usernametextfield(),
            const SizedBox(
              height: 15.0,
            ),
            _userpassintextfield(),
            const SizedBox(
              height: 20.0,
            ),
            _bottomSubmit(),
            const SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _usernametextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextFormField(
          controller: controllerUser,
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'ejemplo@gmail.com',
            labelText: 'UserName',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _userpassintextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextFormField(
          controller: controllerPass,
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.lock),
            hintText: '***',
            labelText: 'Put your Password',
          ),
          onChanged: (value) {},
        ),
      );
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
            Navigator.pushReplacementNamed(context, '/emergency_type_page');
            // Login();
          });
    });
  }
}
