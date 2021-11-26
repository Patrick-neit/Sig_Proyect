import 'package:http/http.dart' as http;
import 'package:sig_proyect/models/login_register.dart';

class LoginService {
  Future<bool> loginregister(LoginUser loginUser) async {
    const url = 'http://10.0.2.2:8000/api/autentificar';
    var log = loginUserToMap(loginUser);
    final response = await http.post(
      Uri.parse(url),
      body: log,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      // ignore: avoid_print

      // ignore: avoid_print
      print(log);
      return true;
    } else {
      return false;
    }
  }
}
