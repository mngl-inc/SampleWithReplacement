import 'package:flutter/material.dart';
import 'package:sample_app/Models/selection_bloc.dart';
import 'package:sample_app/UI/selection.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SelectionBloc>(
        create: (context) => SelectionBloc(),
        lazy: false,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: SafeArea(child: Material(child: SelectionScreen())),
        ));
  }
}
