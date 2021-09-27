import 'package:flutter/material.dart';

import 'package:chatty/ui/theming/theme.dart';

abstract class _Ctext extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextOverflow textOverflow;

  const _Ctext({
    Key? key,
    required this.text,
    required this.textAlign,
    required this.textOverflow,
  })  : super(key: key);
}

// APPBAR TEXT ELEMENTS
/// THese are texts tht aiwll be used generally in the
/// appbars and sliverBars
/// APpBarHEader
class CAppBarHeader extends _Ctext {
  const CAppBarHeader(String text,
      {Key? key,
        TextAlign textAlign = TextAlign.start,
        TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTheme.of(context).appBarHeader,
    );
  }
}

/// APpBarDescription Text
class CAppBarDescription extends _Ctext {
  const CAppBarDescription(String text,
      {Key? key,
        TextAlign textAlign = TextAlign.start,
        TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTheme.of(context).appBarDescriptionText,
    );
  }
}

// CONTENT Texts
/// Header Texts
/// These are used in the various text items
class CHeader extends _Ctext {
  const CHeader(String text,
      {Key? key,
        TextAlign textAlign = TextAlign.start,
        TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTheme.of(context).header,
    );
  }
}

// Title Widget
/// These wil be used in the overall title elements.
/// these will be placed in the various segments
class CTitle extends _Ctext {
  const CTitle(String text,
      {Key? key,
        TextAlign textAlign = TextAlign.start,
        TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTheme.of(context).title,
    );
  }
}

// Description Text Widget
/// These are used in the various card element parts
class CDescriptionText extends _Ctext {
  const CDescriptionText(String text,
      {Key? key,
        TextAlign textAlign = TextAlign.start,
        TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTheme.of(context).descriptionText,
    );
  }
}

// Body Text
/// This is the body text that will exist in the project
class CBodyText extends _Ctext {
  const CBodyText(String text,
      {Key? key,
        TextAlign textAlign = TextAlign.start,
        TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTheme.of(context).bodyText,
    );
  }
}

// CARD Texts
/// These are used in the various hEaders in the cards.
/// The cards here include Job Cards and Infomation cards.
// Card Header
class CCardHeader extends _Ctext {
  const CCardHeader(String text,
      {Key? key,
        TextAlign textAlign = TextAlign.start,
        TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTheme.of(context).header,
    );
  }
}

// BUTTON TEXTS
///  - These texts will appear on the various buttons
// Normal ButtonTexts
/// This is the default button text element.
/// This will be of the color black.
class CBtnText extends _Ctext {
  const CBtnText(String text,
      {Key? key,
        TextAlign textAlign = TextAlign.start,
        TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTheme.of(context).buttonText,
    );
  }
}

// Flat Button Text
class CFlatBtnText extends _Ctext {
  const CFlatBtnText(String text,
      {Key? key,
        TextAlign textAlign = TextAlign.start,
        TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTheme.of(context).flatButtonText,
    );
  }
}

//White Button Text
///
class CBtnTextWhite extends _Ctext {
  const CBtnTextWhite(String text,
      {Key? key,
        TextAlign textAlign = TextAlign.start,
        TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTheme.of(context).buttonTextWhite,
    );
  }
}

// Error Button Text
///
class CBtnTextError extends _Ctext {
  const CBtnTextError(String text,
      {Key? key,
        TextAlign textAlign = TextAlign.start,
        TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTheme.of(context).buttonTextError,
    );
  }
}

// Success Button Text
///
class CBtnTextSuccess extends _Ctext {
  const CBtnTextSuccess(String text,
      {Key? key,
        TextAlign textAlign = TextAlign.start,
        TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTheme.of(context).buttonTextSuccess,
    );
  }
}
