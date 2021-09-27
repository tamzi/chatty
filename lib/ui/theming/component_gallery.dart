
import 'package:flutter/material.dart';
import 'package:chatty/ui/theming/utils/scale.dart' as scale;
import 'package:chatty/ui/theming/theme.dart';
import 'atoms/ccolors.dart';
import 'atoms/ctexts.dart';
import 'components/c_plain_buttons.dart';
import 'components/cbuttons.dart';



void main() {
  runApp(CTheme(
      child: MaterialApp(
        title: "Chatty Component Gallery",
        home: GalleryRoot(),
        routes: {
          '/texts': (context) => TextsGallery(),
          '/buttons': (context) => ButtonsGallery(),
          '/Card': (context) => CardGallery(),
          '/listTiles': (context) => ListTilesGallery(),
        },
      )));
}

class GalleryRoot extends StatelessWidget {
  const GalleryRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CThemeColors.white,
        appBar: AppBar(
          title: const CAppBarHeader(
            'Chatty Component Gallery',
          ),
          centerTitle: true,
          elevation: 7,
          backgroundColor: CThemeColors.deepGray,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              /// Texts
              ListTile(
                title: const CTitle("Chatty Texts"),
                subtitle: const CDescriptionText(
                  "This will show a list of all the text items.",
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/texts');
                },
              ),
              const Divider(),

              /// Buttons
              ListTile(
                title: const CTitle("Chatty Buttons"),
                subtitle: const CDescriptionText(
                    "This will show a list of all the button widgets."),
                onTap: () {
                  Navigator.pushNamed(context, "/buttons");
                },
              ),
              const Divider(),
              ListTile(
                //TextButton
                title: const CTitle("Chatty Cards"),
                subtitle: const CDescriptionText("Chatty Card Gallery. Can be tapped."),
                onTap: () {
                  Navigator.pushNamed(context, "/Card");
                },
              ),
              const Divider(),

              /// ListsGallery
              ListTile(
                //SlideButton
                  title: const CTitle("Chatty Lists Gallery"),
                  subtitle: const CDescriptionText(
                      "Tiles layout with various information. Can be tapped."),
                  onTap: () {
                    Navigator.pushNamed(context, "/listTiles");
                  }),
              const Divider(),

              /// JobCardGallery
            ],
          ),
        ));
  }
}

/// Start of Gallery element Classes
/// Text Widgets Gallery
class TextsGallery extends StatelessWidget {
  const TextsGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CThemeColors.lightGray,
        appBar: AppBar(
          title: const CAppBarHeader('Text Items'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: CThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(
                children: const <Widget>[
                  // Content Texts
                  CHeader('This is a Header'),
                  Divider(),
                  CTitle('This is a Title'),
                  Divider(),
                  CDescriptionText(
                    "This is a description.",
                  ),
                  Divider(),
                  CBodyText('This is a body Text'),
                  Divider(),
                  // AppBar Texts
                  CAppBarHeader('This is an AppBar Header'),
                  Divider(),
                  CAppBarDescription('This is an AppBar Description'),
                  Divider(),
                ],
              ),
            ),
          ),
        ));
  }
}

//Button Widgets
class ButtonsGallery extends StatelessWidget {
  const ButtonsGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const CAppBarHeader('Chatty Buttons'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: CThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: CButtonBlack(
                    label: 'Apply Now',
                    onPressed: () {
                      print('You tapped on ButtonBlack with text Apply Now');
                    },
                  ),
                ),
                Divider(),
                SizedBox(
                  width: double.infinity,
                  child: CButtonGrey(
                    label: 'Delivered',
                    onPressed: () {
                      print('You tapped on ButtonGrey with text Delivered');
                    },
                  ),
                ),
                const Divider(),
                SizedBox(
                  width: double.infinity,
                  child: CButtonRed(
                    label: 'Apply for job',
                    onPressed: () {
                      print('You tapped on ButtonRed with text Apply for job');
                    },
                  ),
                ),
                const Divider(),
                SizedBox(
                  width: double.infinity,
                  child: CPlainFlatButton(
                    label: 'Am CPlainFlatButton',
                    onPressed: () {
                      print('You tapped on PLain Button with text Apply for job');
                    },
                  ),
                ),
                const Divider(),
                SizedBox(
                  width: double.infinity,
                  child: CWarningFlatButton(
                    label: 'Am CWarningFlatButton',
                    onPressed: () {
                      print('You tapped on PLain Button with text Apply for job');
                    },
                  ),
                ),
                const Divider(),
                SizedBox(
                  width: double.infinity,
                  child: CSuccessFlatButton(
                    label: 'Am CSuccessFlatButton',
                    onPressed: () {
                      print('You tapped on PLain Button with text Apply for job');
                    },
                  ),
                ),
                const Divider(),

              ]),
            ),
          ),
        ));
  }
}

class CardGallery extends StatelessWidget {
  const CardGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const CAppBarHeader('Chatty Info Cards'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: CThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: const <Widget>[]),
            ),
          ),
        ));
  }
}

class CCardGallery extends StatelessWidget {
  const CCardGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const CAppBarHeader('Chatty Cards'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: CThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[]),
            ),
          ),
        ));
  }
}

class ListTilesGallery extends StatelessWidget {
  const ListTilesGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: CAppBarHeader('List Tiles'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: CThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[]),
            ),
          ),
        ));
  }
}
