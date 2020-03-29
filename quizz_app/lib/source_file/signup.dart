import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpPage();
  }
}

class _SignUpPage extends State<SignUpPage> {
  String firstName = "";
  var _formKey = GlobalKey<FormState>();
  final double _minimumPadding = 5.0;


  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailIdController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  var displayResult = '';
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
        appBar: AppBar(
          title: Text("Quizzzz"),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
              padding: EdgeInsets.all(_minimumPadding * 2),
              child: ListView(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                          top: _minimumPadding, bottom: _minimumPadding),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: textStyle,
                        controller: firstNameController,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter first name';
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'First Name',
                            hintText: 'Enter first name',
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                                color: Colors.yellowAccent, fontSize: 15.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                          top: _minimumPadding, bottom: _minimumPadding),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: textStyle,
                        controller: lastNameController,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter last name';
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Last Name',
                            hintText: 'Enter last name',
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                                color: Colors.yellowAccent, fontSize: 15.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                          top: _minimumPadding, bottom: _minimumPadding),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: textStyle,
                        controller: emailIdController,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter last name';
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter email id',
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                                color: Colors.yellowAccent, fontSize: 15.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                          top: _minimumPadding, bottom: _minimumPadding),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        style: textStyle,
                        controller: phoneController,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter mobile number';
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'Mobile',
                            hintText: 'Enter mobile number',
                            labelStyle: textStyle,
                            errorStyle: TextStyle(
                                color: Colors.yellowAccent, fontSize: 15.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                          bottom: _minimumPadding, top: _minimumPadding),
                      child: RaisedButton(
                        color: Theme.of(context).accentColor,
                        textColor: Theme.of(context).primaryColorDark,
                        child: Text(
                          'Sign up',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          setState(() {
                            if (_formKey.currentState.validate()) {
                              // this.displayResult = _calculateTotalReturns();
                            }
                          });
                        },
                      )),
                ],
              )),
        ));
  }
}
