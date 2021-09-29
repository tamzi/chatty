
import 'package:chatty/ui/theming/atoms/ccolors.dart';
import 'package:chatty/ui/theming/atoms/ctexts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CThemeColors.white,
        appBar: AppBar(
          title: const CTitle('Chat away'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: CThemeColors.lightGray,
        ),
        body: SafeArea(
          child: Container(),
        ));
  }
}
