import 'package:flutter/material.dart';
import 'package:sig_proyect/global_var.dart';
import 'package:sig_proyect/models/login_register.dart';
import 'package:sig_proyect/services/login_services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerapp = TextEditingController();
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
              height: 50.0,
            ),
            const Text('Ingrese sus datos!'),
            const SizedBox(
              height: 20.0,
            ),
            Image.asset(
              'assets/images/login.jpeg',
              height: 160.0,
            ),
            _tipoapptextfield(),
            const SizedBox(
              height: 15.0,
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
            _bottomregister(),
            const SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _tipoapptextfield() {
    return StreamBuilder(
        // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
        builder: (BuildContext context, AsyncSnapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: TextFormField(
          controller: controllerapp,
          decoration: const InputDecoration(
            icon: Icon(Icons.toys_rounded),
            labelText: 'Tipo',
          ),
          onChanged: (value) {},
        ),
      );
    });
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

  void login() async {
    var url = Uri.parse('http://10.0.2.2:8000/api/autentificar');
    var response = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(
            {'login': controllerUser.text, 'pass': controllerPass.text}));
    var data = json.decode(response.body);
    idusuario = data['id'];
    tipousuario = data['app'];
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
          onPressed: () async {
            // ignore: unused_local_variable, unnecessary_new
            LoginUser loginUser = new LoginUser(
              app: controllerapp.text,
              login: controllerUser.text,
              password: controllerPass.text,
            );

            // ignore: unused_local_variable
            bool loginsuccess = await LoginService().loginregister(loginUser);
            if (loginsuccess) {
              tipousuario = controllerapp.text;
              Navigator.pushReplacementNamed(context, '/emergency_type_page');
            } else {
              showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) => const AlertDialog(
                    title: Text('Re check your information||Empty Values'),
                    content: Text('Back')

                    //backgroundColor: Colors.redAccent,
                    //shape: CircleBorder(),
                    ),
              );
            }
          });
    });
  }

  Widget _bottomregister() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      // ignore: deprecated_member_use
      return SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/register_user_page');
          },
          child: const Text(
            "Registrate",
            style: TextStyle(fontSize: 10),
          ),
        ),
      );
    });
  }
}
