import 'package:flutter/material.dart';
import 'package:flutter_app/Auth/InputFieldValidator.dart';

import 'EmployeHomePage.dart';
import 'LoginAbstractPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login In Page"),
      ),
      body: LogingAbstact(),
    );
    ;
  }
}
