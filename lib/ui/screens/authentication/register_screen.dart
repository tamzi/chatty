import 'package:chatty/ui/theming/atoms/ccolors.dart';
import 'package:chatty/ui/theming/atoms/ctexts.dart';
import 'package:chatty/ui/theming/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:chatty/ui/theming/utils/scale.dart' as scale;
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {
  runApp(CTheme(
      child: const GetMaterialApp(
        title: "Chatty Component Gallery",
        home: RegistrationScreen(),
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
          padding: EdgeInsets.all(scale.value(10.0)),
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




