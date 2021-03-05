import 'package:flutter/material.dart';
import 'package:sample_app/UI/switch_sections.dart';

/// but a login page here

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Logins"),
          RaisedButton(
            child: Text("Anonymous Login"),
            onPressed: () {},
          ),
          SwitchPage()
        ],
      ),
    );
  }
}
