import 'package:flutter/material.dart';
import 'package:sample_app/Models/main_bloc.dart';
import 'package:sample_app/Models/selection_bloc.dart';
import 'package:sample_app/UI/dating_page.dart';
import 'package:sample_app/UI/login_page.dart';
import 'package:sample_app/UI/selection_page.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/static_variables.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  List<Widget> Sections = [LoginPage(), SelectionPage(), DatingPage()];
  int current = Variables.login;
  // I don't want this to change
  final main_bloc = MainBloc();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<SelectionBloc>(
            create: (context) => SelectionBloc(),
            lazy: false,
          ),
          ChangeNotifierProvider.value(
            value: main_bloc,
          )
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: SafeArea(child:
              Material(child: Consumer<MainBloc>(builder: (_, mainBloc, __) {
            return Sections[mainBloc.current_section];
          }))),
          //home: SafeArea(child: Material(child: LoginPage())),
        ));
  }
}
