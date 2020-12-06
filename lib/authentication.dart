import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Authentication with ChangeNotifier {
  void signup(String authData, [String _authData]) {
    Future<Void> signUp(String email, String password) async {
      const url =
          'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCGb-ShCyoyjNy5qZD9zlxfeUeve7glZBU';

      final response = await http.post(url,
          body: json.encode({
            'email': email,
            'password': password,
            'returnSecureToken': true
          }));

      final responsedata = json.decode(response.body);
      print(responsedata);
    }
  }
}
