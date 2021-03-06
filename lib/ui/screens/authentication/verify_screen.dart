import 'package:chatty/ui/theming/atoms/ccolors.dart';
import 'package:chatty/ui/theming/atoms/ctexts.dart';
import 'package:chatty/ui/theming/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:chatty/ui/theming/utils/scale.dart' as scale;
import 'package:flutter/material.dart';


class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  int count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CThemeColors.white,
        appBar: AppBar(
          title: const CAppBarHeader(
            'Verify screen',
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
              CBodyText("verfiy identity Screen"),
              Divider(),
            ],
          ),
        ));
  }
}




