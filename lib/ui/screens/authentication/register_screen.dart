import 'package:chatty/ui/theming/atoms/ccolors.dart';
import 'package:chatty/ui/theming/atoms/ctexts.dart';
import 'package:chatty/ui/theming/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:chatty/ui/theming/utils/scale.dart' as scale;
import 'package:flutter/material.dart';


void main() {
  runApp(CTheme(
      child: const MaterialApp(
        title: "Chatty Component Gallery",
        home: RegistrationScreen(),
        routes: {
         /* '/texts': (context) => TextsGallery(),
          '/buttons': (context) => ButtonsGallery(),*/
        },
      )));
}

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  int count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CThemeColors.white,
        appBar: AppBar(
          title: const CAppBarHeader(
            'Create account',
          ),
          centerTitle: true,
          elevation: 7,
          backgroundColor: CThemeColors.deepGray,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: const <Widget>[
              Divider(),
              CBodyText("Register screen"),
              Divider(),
            ],
          ),
        ));
  }
}




