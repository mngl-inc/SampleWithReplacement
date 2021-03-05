import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/Models/main_bloc.dart';
import 'package:sample_app/static_variables.dart';

class SwitchPage extends StatelessWidget {
  const SwitchPage({Key key}) : super(key: key);

  /// This class is used for trouble shooting.
  /// I want to be able to change to different pages using builds.
  @override
  Widget build(BuildContext context) {
    return Consumer<MainBloc>(
      builder: (_, mainBloc, __) => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              child: Text("Login"),
              onPressed: () {
                mainBloc.current_section = Variables.login;
              },
            ),
            RaisedButton(
                child: Text("Selection"),
                onPressed: () {
                  mainBloc.current_section = Variables.selection;
                }),
            RaisedButton(
                child: Text("Dating"),
                onPressed: () {
                  mainBloc.current_section = Variables.dating;
                })
          ],
        ),
      ),
    );
  }
}
