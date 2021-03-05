import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/Models/selection_bloc.dart';
import 'package:sample_app/UI/switch_sections.dart';

class SelectionPage extends StatefulWidget {
  SelectionPage({Key key}) : super(key: key);
  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Options(),
      Align(
        alignment: Alignment(-0.6, -0.8),
        child: Row(children: [
          Text("Current user: ", style: TextStyle(fontSize: 20)),
          Container(
              width: 100,
              child: TextField(controller: myController, cursorWidth: 1.0))
        ]),
      ),
      Align(
        alignment: Alignment(0.5, -0.8),
        child: RaisedButton(
            onPressed: () {
              print("okay");
            },
            child: Text("Change", style: TextStyle(fontSize: 10))),
      ),
      Align(
          alignment: Alignment(-0.6, 0.6),
          child: Consumer<SelectionBloc>(
            builder: (context, selection, child) => Text(
                "Picked " + selection.pickedUser,
                style: TextStyle(fontSize: 20)),
          )),
      Align(
        alignment: Alignment(0.6, 0.6),
        child: RaisedButton(
            onPressed: () {
              print("okay");
            },
            child: Text("Submit", style: TextStyle(fontSize: 10))),
      ),
      Align(alignment: Alignment(0, 0.8), child: SwitchPage())
    ]);
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
    return InkWell(
        child: Container(
      child: Stack(children: [
        Option(xAxis: -0.5, yAxis: -0.4, value: "1"),
        Option(xAxis: 0.5, yAxis: -0.4, value: "2"),
        Option(xAxis: 0, yAxis: -0.2, value: "3"),
        Option(xAxis: -0.5, yAxis: 0, value: "4"),
        Option(xAxis: 0.5, yAxis: 0, value: "5"),
      ]),
    ));
  }
}

class Option extends StatelessWidget {
  const Option({Key key, this.xAxis, this.yAxis, this.value}) : super(key: key);

  final double xAxis, yAxis;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Consumer<SelectionBloc>(builder: (context, selection, child) {
      return Container(
        child: Align(
            alignment: Alignment(this.xAxis, this.yAxis),
            child: GestureDetector(
                child: Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(value, style: TextStyle(fontSize: 20))),
                onTap: () {
                  selection.pickedUser = this.value;
                  print("option: " + this.value);
                })),
      );
    });
  }
}
