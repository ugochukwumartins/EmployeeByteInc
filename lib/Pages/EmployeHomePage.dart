import 'package:flutter/material.dart';

import 'CreateEmployeePage.dart';

class EmployeeHomePage extends StatefulWidget {
  @override
  _EmployeeHomePageState createState() => _EmployeeHomePageState();
}

class _EmployeeHomePageState extends State<EmployeeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Page"),
        actions: <Widget>[
          FlatButton(
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      fullscreenDialog: true,
                      builder: (context) => CreateEmployee(),
                    ),
                  ),
              child: Text("Create Employee")),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
    );
  }
}
