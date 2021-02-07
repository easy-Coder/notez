import 'package:flutter/material.dart';
import 'package:notez/pages/greetings.dart';

class AgeForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AgeFormState();
}

class _AgeFormState extends State<AgeForm> {
  final TextEditingController _controller = TextEditingController();
  String _age;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          width: 48,
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            maxLength: 3,
            // maxLengthEnforced: true,
            textAlign: TextAlign.center,
            // decoration: InputDecoration(
            //
            // ),
          ),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              _age = _controller.text;
            });
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return BirthdayGreetingsPage(age: _age);
                },
              ),
            );
          },
          child: Text(
            "Continue",
            style: TextStyle(fontSize: 18),
          ),
          color: Colors.blueAccent[700],
          textColor: Colors.white,
        )
      ],
    );
  }
}
