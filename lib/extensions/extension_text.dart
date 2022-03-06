import 'package:auto_size_text/auto_size_text.dart';
import 'package:custom_view/custom_font_size.dart';
import 'package:flutter/material.dart';

import '../custom_view.dart';

extension Texts on String {
  Widget iconWithLabel(
    BuildContext context, {
    Color? color,
    double fontSize = CustomFontSize.f16,
  }) {
    return Text(
      this,
      style: TextStyle(color: color, fontSize: fontSize),
    );
  }

  Widget description(BuildContext context,
          {double fontSize = CustomFontSize.f18,
          TextAlign? textAlign,
          int? maxLines,
          Color? color,
          TextDecoration? decoration,
          double? letterSpacing,
          FontWeight? fontWeight}) =>
      AutoSizeText(
        this,
        textAlign: textAlign,
        maxLines: maxLines,
        style: Theme.of(context).textTheme.headline4!.copyWith(
            fontSize: fontSize,
            decoration: decoration,
            color: color ?? Theme.of(context).textTheme.headline5!.color,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight),
      );

  Widget linkTapWithLabel(
          BuildContext context, String label, Function(String url) onTap,
          {double fontSize = CustomFontSize.f20,
          TextAlign? textAlign,
          int? maxLines,
          Color? color,
          TextDecoration? decoration,
          double? letterSpacing,
          FontWeight? fontWeight}) =>
      InkWell(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            label.description(context),
            SpacerBox.v4,
            this.link(context,
                fontSize: fontSize,
                textAlign: textAlign,
                maxLines: maxLines,
                color: color,
                decoration: decoration,
                letterSpacing: letterSpacing,
                fontWeight: fontWeight),
          ],
        ),
        onTap: () {
          onTap(this);
        },
      );

  Widget link(BuildContext context,
          {double fontSize = CustomFontSize.f20,
          TextAlign? textAlign,
          int? maxLines,
          Color? color,
          TextDecoration? decoration,
          double? letterSpacing,
          FontWeight? fontWeight}) =>
      AutoSizeText(
        this,
        textAlign: textAlign,
        maxLines: maxLines,
        style: Theme.of(context).textTheme.headline4!.copyWith(
            fontSize: fontSize,
            decoration: TextDecoration.underline,
            color: color ?? Theme.of(context).textTheme.headline5!.color,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight),
      );

  Widget date(
    BuildContext context, {
    double fontSize = CustomFontSize.f13,
    Color? color,
    int? maxLines,
    double? letterSpacing,
    FontWeight? fontWeight,
  }) {
    return AutoSizeText(
      this,
      maxLines: maxLines,
      style: Theme.of(context).textTheme.headline4!.copyWith(
            fontSize: fontSize,
            color: color,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight,
          ),
    );
  }

  Widget title(
    BuildContext context, {
    double fontSize = CustomFontSize.f22,
    Color? color,
    int? maxLines,
    double? letterSpacing,
    FontWeight? fontWeight,
    TextAlign? textAlign,
  }) {
    return AutoSizeText(
      this,
      maxLines: maxLines,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.headline5!.copyWith(
            fontSize: fontSize,
            color: color,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight,
          ),
    );
  }

  Widget label(
    BuildContext context, {
    bool withoutAutoSize = false,
    double fontSize = CustomFontSize.f20,
    Color? color,
    int maxLines = 2,
    double? letterSpacing,
    FontWeight? fontWeight,
  }) {
    if (withoutAutoSize == true) {
      return Text(
        this,
        style: Theme.of(context).textTheme.headline5!.copyWith(
              fontSize: fontSize,
              color: color,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
            ),
      );
    }

    return AutoSizeText(
      this,
      maxLines: maxLines,
      style: Theme.of(context).textTheme.headline5!.copyWith(
            fontSize: fontSize,
            color: color,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight,
          ),
    );
  }

  Widget labelIntro(
    BuildContext context, {
    Color? color,
  }) {
    return AutoSizeText(
      this,
      style: TextStyle(
          color: color ?? Theme.of(context).primaryColor, fontSize: 28),
      textAlign: TextAlign.center,
    );
  }
}
