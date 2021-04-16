import 'package:flutter/material.dart';

import 'Pages/LoginPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EmployeeBtye',
      theme: ThemeData(),
      home: LoginPage(),
    ),
  );
}
