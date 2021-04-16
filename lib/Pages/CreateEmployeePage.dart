import 'package:flutter/material.dart';
import 'package:flutter_app/Buttons/ButtonDesign.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class CreateEmployee extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Employee"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            children: <Widget>[
              TextField(
//   focusNode: _emailNode,
// onChanged: (emal) => _update(),
//   controller: _emailController,
// onEditingComplete: emaileditingComplete,
                decoration: InputDecoration(
                  //  errorText: emailvalid ? widget.emailError : null,
                  labelText: "FirstName",
                  hintText: "Enter FirstName",
                  //  enabled: _isLoading == false,
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              TextField(
                //   focusNode: _emailNode,
                // onChanged: (emal) => _update(),
                //   controller: _emailController,
                // onEditingComplete: emaileditingComplete,
                decoration: InputDecoration(
                  //  errorText: emailvalid ? widget.emailError : null,
                  labelText: "LastName",
                  hintText: "Enter LastName",
                  //  enabled: _isLoading == false,
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              TextField(
                //   focusNode: _emailNode,
                // onChanged: (emal) => _update(),
                //   controller: _emailController,
                // onEditingComplete: emaileditingComplete,
                decoration: InputDecoration(
                  //  errorText: emailvalid ? widget.emailError : null,
                  labelText: "Designation",
                  hintText: "Enter Designation",
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
                // controller: _passwordController,
                //  onChanged: (password) => _update(),
                decoration: InputDecoration(
                    //   errorText: passswordvalid ? widget.passwordError : null,
                    labelText: "Photo",
                    hintText: " SocialMedia"
                    //  enabled: _isLoading == false,
                    ),
              ), //
              TextField(
                //focusNode: _passwordNode,
                // controller: _passwordController,
                //  onChanged: (password) => _update(),
                decoration: InputDecoration(
                  //   errorText: passswordvalid ? widget.passwordError : null,
                  labelText: "Address",
                  //  enabled: _isLoading == false,
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,

                //   onEditingComplete: _signIn,
              ),
              TextField(
                //focusNode: _passwordNode,
                // controller: _passwordController,
                //  onChanged: (password) => _update(),
                decoration: InputDecoration(
                  //   errorText: passswordvalid ? widget.passwordError : null,
                  labelText: "Country",
                  //  enabled: _isLoading == false,
                ),
                keyboardType: TextInputType.text,
                //   onEditingComplete: _signIn,
              ),
              TextField(
                //focusNode: _passwordNode,
                // controller: _passwordController,
                //  onChanged: (password) => _update(),
                decoration: InputDecoration(
                  //   errorText: passswordvalid ? widget.passwordError : null,
                  labelText: "State",
                  //  enabled: _isLoading == false,
                ),
                keyboardType: TextInputType.text,

                //   onEditingComplete: _signIn,
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
                onpressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
