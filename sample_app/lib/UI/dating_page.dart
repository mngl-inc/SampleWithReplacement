import 'package:flutter/material.dart';
import 'package:sample_app/UI/switch_sections.dart';

/// but a login page here

class DatingPage extends StatelessWidget {
  const DatingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("User: # is matched"),
          RaisedButton(
            child: Text("Unmatch"),
            onPressed: () {},
          ),
          SwitchPage()
        ],
      ),
    );
  }
}
