import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

import 'atoms/ccolors.dart';

const CThemeData _default = CThemeData(
  /// Colors
  bluish: CThemeColors.bluish,
  darkBluish: CThemeColors.darkBluish,
  reddish: CThemeColors.reddish,
  warmRed: CThemeColors.warmRed,
  limeGreenish: CThemeColors.limeGreenish,
  white: CThemeColors.white,
  black: CThemeColors.black,
  gray: CThemeColors.gray,
  deepGray: CThemeColors.deepGray,
  darkGray: CThemeColors.lightGray,
  lightGray: CThemeColors.lightGray,
  buttonRed: CThemeColors.buttonRed,

  /// All Text Fields
  appBarHeader: TextStyle(
      fontSize: 27.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w500,
      color: CThemeColors.black),
  appBarDescriptionText: TextStyle(
      fontSize: 13.0,
      height: 1.3,
      letterSpacing: 0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w700,
      color: CThemeColors.darkGray),

  header: TextStyle(
      fontSize: 37.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w900,
      color: CThemeColors.black),
  title: TextStyle(
      fontSize: 33.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w500,
      color: CThemeColors.black),
  bodyText: TextStyle(
      fontSize: 13.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.normal,
      color: CThemeColors.darkGray),
  descriptionText: TextStyle(
      fontSize: 17.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: CThemeColors.black),
  cardHeader: TextStyle(
      fontSize: 17.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w700,
      color: CThemeColors.black),

  ///TextButtons
  buttonText: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: CThemeColors.black),
  flatButtonText: TextStyle(
      fontSize: 15.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w500,
      color: CThemeColors.black),
  buttonTextWhite: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: CThemeColors.white),
  buttonTextError: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: CThemeColors.reddish),
  buttonTextSuccess: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: CThemeColors.limeGreenish),

  ///FORM
  ///
  inputText: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: CThemeColors.black),
);

class CThemeData {
  /// Colors
  final Color? bluish;
  final Color? darkBluish;
  final Color? black;
  final Color? reddish;
  final Color? warmRed;
  final Color? limeGreenish;
  final Color? white;
  final Color? gray;
  final Color? deepGray;
  final Color? darkGray;
  final Color? lightGray;

  final Color? buttonRed;

  final CThemeColors? colors;

  //Text
  ///AppBar Texts
  final TextStyle? appBarHeader;
  final TextStyle? appBarDescriptionText;

  ///Content Texts
  final TextStyle? header;
  final TextStyle? title;
  final TextStyle? bodyText;
  final TextStyle? descriptionText;
  final TextStyle? cardHeader;

  /// ButtonTexts
  final TextStyle? buttonText;
  final TextStyle? buttonTextError;
  final TextStyle? buttonTextSuccess;
  final TextStyle? buttonTextWhite;
  final TextStyle? flatButtonText;

  //Form Texts
  final TextStyle? inputText;

  const CThemeData({
    /// Colors
    this.bluish,
    this.darkBluish,
    this.black,
    this.reddish,
    this.warmRed,
    this.limeGreenish,
    this.gray,
    this.deepGray,
    this.darkGray,
    this.lightGray,
    this.white,
    this.colors,
    this.buttonRed,
    // TEXT
    /// AppBar Text
    this.appBarHeader,
    this.appBarDescriptionText,

    /// Content Text
    this.header,
    this.title,
    this.bodyText,
    this.descriptionText,
    this.cardHeader,
    this.inputText,

    /// ButtonTexts
    this.buttonText,
    this.flatButtonText,
    this.buttonTextError,
    this.buttonTextSuccess,
    this.buttonTextWhite,
  });
}

/// The Chatty Theme.
///
/// This is the theme for the Chatty UI Component that make up the
/// Chatty design system for the  application.
///
/// **Note**
/// This is separate to the Flutter Material [Theme] class.
/// See Usage below.
///
/// The values for the Theme are provided by [CThemeData].
/// (The properties of [CThemeData] are the design tokens for the UI.)
///
/// The default theme values (aka fallback theme) used is considered the
/// standard theme configuration. This can be replaced in the
/// Chatty ThemeData (CThemeData) constructor if needed.
///
/// The fields in this class represent the design tokens in the Job Finder
/// design system. They are referenced directly by the UI Component Widgets
/// for the design system. This means that changing the values will change
/// the visual styling of the UI Components.
class CTheme extends InheritedWidget {
  CTheme({this.data = _default, required this.child}) : super(child: child);

  /// The design tokens used by UI Components to apply styling.
  final CThemeData data;
  @override
  final Widget child;

  /// Use to get a reference to the nearest available [CThemeData] anywhere
  /// in the widget tree below the child widget.
  ///
  /// ```
  /// var themeData = CTheme.of(context);
  /// ```
  static CThemeData of(BuildContext context) {
    ///This will help in logging instances where the theme
    ///is not found on the console.
    ///Ideally this should not be case as we will follow strcitly
    ///the design system
    final Logger staticLogger = Logger();
    final CTheme? currentTheme =
        context.dependOnInheritedWidgetOfExactType<CTheme>();
    if (currentTheme == null) {
      staticLogger.w("Chatty Theme missing. Will apply the default theme");
      return _default;
    }
    return currentTheme.data;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return data == (oldWidget as CTheme).data;
  }
}

///
/// TO DO
/// - Write notes for the Design System by combining the 3 ideas
/// We will prefer odd numbers instead of even ones :)
/// 3,7, 13.17.19 etc
