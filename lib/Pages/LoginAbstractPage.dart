import 'package:flutter/material.dart';
import 'package:flutter_app/Auth/InputFieldValidator.dart';
import 'package:flutter_app/Buttons/ButtonDesign.dart';

import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'EmployeHomePage.dart';

class LogingAbstact extends StatefulWidget with InputValidator {
  @override
  _LogingAbstactState createState() => _LogingAbstactState();
}

class _LogingAbstactState extends State<LogingAbstact> {
  final TextEditingController _controller = new TextEditingController();
  var items = [
    'Working a lot harder',
    'Being a lot smarter',
    'Being a self-starter',
    'Placed in charge of trading charter'
  ];
  final format = DateFormat("yyyy-MM-dd");

  final TextEditingController _FirstnameController =
      new TextEditingController();
  final TextEditingController _LastnameController = new TextEditingController();
  final TextEditingController _GenderController = new TextEditingController();
  final TextEditingController _DateofbirthController =
      new TextEditingController();
  final TextEditingController _PassportphotoController =
      new TextEditingController();
  final TextEditingController _AddressController = new TextEditingController();
  final TextEditingController _CountryController = new TextEditingController();
  final TextEditingController _StateController = new TextEditingController();

  bool submited = false;

  String get _First => _FirstnameController.text;
  String get _Last => _LastnameController.text;
  String get _Gender => _GenderController.text;
  String get _Dob => _DateofbirthController.text;
  String get _Pass => _PassportphotoController.text;
  String get _Ads => _AddressController.text;
  String get _Contry => _CountryController.text;
  String get _Stats => _StateController.text;
  Future<void> Signin() async {
    setState(() {
      submited = true;
    });
    try {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          fullscreenDialog: true,
          builder: (context) => EmployeeHomePage(),
        ),
      );
    } catch (e) {
      rethrow;
    } finally {
      setState(() {
        submited = false;
        _FirstnameController.clear();
        _LastnameController.clear();
        _GenderController.clear();

        _DateofbirthController.clear();

        _PassportphotoController.clear();
        _AddressController.clear();
        _CountryController.clear();
        _StateController.clear();
      });
    }
  }

  List<Widget> buildSingleChildScrollView() {
    bool validators = widget.FirstnameStringvalidator.Isvalid(
            _FirstnameController.text) &&
        widget.LastStringvalidator.Isvalid(_LastnameController.text) &&
        widget.GenderStringvalidator.Isvalid(_GenderController.text) &&
        widget.DateOfBirthStringvalidator.Isvalid(
            _DateofbirthController.text) &&
        widget.PassPortStringvalidator.Isvalid(_PassportphotoController.text) &&
        widget.AddressStringvalidator.Isvalid(_AddressController.text) &&
        widget.CountryStringvalidator.Isvalid(_CountryController.text) &&
        widget.StateStringvalidator.Isvalid(_StateController.text);

    bool PasswordErroText = submited &&
        !widget.FirstnameStringvalidator.Isvalid(_FirstnameController.text) &&
        !widget.LastStringvalidator.Isvalid(_LastnameController.text) &&
        !widget.GenderStringvalidator.Isvalid(_GenderController.text) &&
        !widget.DateOfBirthStringvalidator.Isvalid(
            _DateofbirthController.text) &&
        !widget.PassPortStringvalidator.Isvalid(
            _PassportphotoController.text) &&
        !widget.AddressStringvalidator.Isvalid(_AddressController.text) &&
        !widget.CountryStringvalidator.Isvalid(_CountryController.text) &&
        !widget.StateStringvalidator.Isvalid(_StateController.text);
    return [
      Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: <Widget>[
            TextField(
//   focusNode: _emailNode,
              onChanged: (emal) => _update(),
              controller: _FirstnameController,
// onEditingComplete: emaileditingComplete,
              decoration: InputDecoration(
                errorText: PasswordErroText ? widget.LogError : null,
                labelText: "FirstName",
                hintText: "Enter FirstName",
                //  enabled: _isLoading == false,
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            TextField(
              //   focusNode: _emailNode,
              onChanged: (emal) => _update(),
              controller: _LastnameController,
              // onEditingComplete: emaileditingComplete,
              decoration: InputDecoration(
                errorText: PasswordErroText ? widget.LogError : null,
                labelText: "LastName",
                hintText: "Enter LastName",
                //  enabled: _isLoading == false,
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            TextField(
              //   focusNode: _emailNode,
              onChanged: (emal) => _update(),
              controller: _GenderController,
              // onEditingComplete: emaileditingComplete,
              decoration: InputDecoration(
                errorText: PasswordErroText ? widget.LogError : null,
                labelText: "Gender",
                hintText: "Gender",
                //  enabled: _isLoading == false,
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),

            SizedBox(
              height: 10,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Basic date field (${format.pattern})',
                  ),
                  DateTimeField(
                    format: format,
                    onChanged: (password) => _update(),
                    controller: _DateofbirthController,
                    onShowPicker: (context, currentValue) {
                      return showDatePicker(
                          context: context,
                          firstDate: DateTime(1900),
                          initialDate: currentValue ?? DateTime.now(),
                          lastDate: DateTime(2100));
                    },
                  ),
                ]),
            TextField(
              //focusNode: _passwordNode,
              controller: _PassportphotoController,
              onChanged: (password) => _update(),
              decoration: InputDecoration(
                  errorText: PasswordErroText ? widget.LogError : null,
                  labelText: "Photo",
                  hintText: "Photo"
                  //  enabled: _isLoading == false,
                  ),
            ), //
            TextField(
              //focusNode: _passwordNode,
              controller: _AddressController,
              onChanged: (password) => _update(),
              decoration: InputDecoration(
                errorText: PasswordErroText ? widget.LogError : null,
                labelText: "Address",
                //  enabled: _isLoading == false,
              ),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,

              //   onEditingComplete: _signIn,
            ),

            Row(
              children: <Widget>[
                new Expanded(
                  child: TextField(
                    //focusNode: _passwordNode,
                    controller: _CountryController,
                    onChanged: (password) => _update(),
                    decoration: InputDecoration(
                      errorText: PasswordErroText ? widget.LogError : null,
                      labelText: "Country",
                      //  enabled: _isLoading == false,
                    ),
                    keyboardType: TextInputType.text,
                    //   onEditingComplete: _signIn,
                  ),
                ),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  onSelected: (String value) {
                    _CountryController.text = value;
                  },
                  itemBuilder: (BuildContext context) {
                    return items.map<PopupMenuItem<String>>(
                      (String value) {
                        return new PopupMenuItem(
                            child: new Text(value), value: value);
                      },
                    ).toList();
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                new Expanded(
                  child: TextField(
                    //focusNode: _passwordNode,
                    controller: _StateController,
                    onChanged: (password) => _update(),
                    decoration: InputDecoration(
                      errorText: PasswordErroText ? widget.LogError : null,
                      labelText: "State",
                      //  enabled: _isLoading == false,
                    ),
                    keyboardType: TextInputType.text,

                    //   onEditingComplete: _signIn,
                  ),
                ),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.arrow_drop_down),
                  onSelected: (String value) {
                    _StateController.text = value;
                  },
                  itemBuilder: (BuildContext context) {
                    return items.map<PopupMenuItem<String>>(
                      (String value) {
                        return new PopupMenuItem(
                            child: new Text(value), value: value);
                      },
                    ).toList();
                  },
                ),
              ],
            ),

            SizedBox(
              height: 25,
            ),
            buildRaisedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.account_box,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    "LogIn",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Opacity(
                    opacity: 0,
                    child: Icon(
                      Icons.account_box,
                      color: Colors.white,
                      size: 40,
                    ),
                  )
                ],
              ),
              borderRadious: 18,
              fontsize: 15,
              TextColor: Colors.white,
              color: Colors.teal[700],
              onpressed: validators ? Signin : null,
            )
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: buildSingleChildScrollView(),
      ),
    );
  }

  _update() {
    setState(() {});
  }
}
