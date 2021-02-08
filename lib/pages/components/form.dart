import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notez/model/user.dart';
import 'package:notez/pages/greetings.dart';

class AgeForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AgeFormState();
}

class _AgeFormState extends State<AgeForm> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  User _user = User();

  _notEmpty(String value) => value != null && value.isNotEmpty;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            maxLength: 40,
            style: TextStyle(
              fontSize: 18,
            ),
            // maxLengthEnforced: true,
            // textAlign: TextAlign.center,
            decoration: InputDecoration(
              labelText: "Enter your name",
            ),
            validator: (value) => !_notEmpty(value) ? "Name is required" : null,
            onSaved: (String value) => _user.name = value,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            maxLength: 3,
            style: TextStyle(
              fontSize: 18,
            ),
            // textAlign: TextAlign.center,
            decoration: InputDecoration(
              labelText: "Enter your age",
            ),
            validator: (value) => !_notEmpty(value) ? "Age is required" : null,
            onSaved: (String value) => _user.age = value,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                // width: 160,
                height: 40,
                child: RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return BirthdayGreetingsPage(user: _user);
                          },
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 18),
                  ),
                  color: Colors.blueAccent[700],
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
