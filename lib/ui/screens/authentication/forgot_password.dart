import 'package:chatty/ui/theming/atoms/ccolors.dart';
import 'package:chatty/ui/theming/atoms/ctexts.dart';
import 'package:chatty/ui/theming/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:chatty/ui/theming/utils/scale.dart' as scale;
import 'package:flutter/material.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  int count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CThemeColors.white,
        appBar: AppBar(
          title: const CAppBarHeader(
            'Forgot password',
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
              CBodyText("Forgot password reset here"),
              Divider(),
            ],
          ),
        ));
  }
}
