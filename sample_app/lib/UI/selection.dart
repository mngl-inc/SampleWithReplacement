import 'package:flutter/material.dart';

class SelectionScreen extends StatefulWidget {
  SelectionScreen({Key key}) : super(key: key);

  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Align(
          alignment: Alignment(0.5, -0.8),
          child: Text("User: ", style: TextStyle(fontSize: 20)),
        ),
        Align(
          alignment: Alignment(-0.6, -0.8),
          child: Text("Current user #", style: TextStyle(fontSize: 20)),
        ),
        Align(
          alignment: Alignment(0.5, -0.8),
          child: RaisedButton(
              onPressed: () {},
              child: Text("change user", style: TextStyle(fontSize: 10))),
        ),
        Options(),
        Align(
          alignment: Alignment(0.6, 0.0),
          child: RaisedButton(
              onPressed: () {},
              child: Text("Submit", style: TextStyle(fontSize: 10))),
        ),
      ]),
    );
  }
}

class Options extends StatefulWidget {
  Options({Key key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Align(
          alignment: Alignment(-0.5, -0.6),
          child: Text("#", style: TextStyle(fontSize: 20)),
        ),
        Align(
          alignment: Alignment(0.5, -0.6),
          child: Text("#", style: TextStyle(fontSize: 20)),
        ),
        Align(
          alignment: Alignment(0, -0.4),
          child: Text("#", style: TextStyle(fontSize: 20)),
        ),
        Align(
          alignment: Alignment(-0.5, -0.2),
          child: Text("#", style: TextStyle(fontSize: 20)),
        ),
        Align(
          alignment: Alignment(0.5, -0.2),
          child: Text("#", style: TextStyle(fontSize: 20)),
        ),
        Align(
          alignment: Alignment(-0.6, 0.0),
          child: Text("Picked #", style: TextStyle(fontSize: 20)),
        )
      ]),
    );
  }
}
