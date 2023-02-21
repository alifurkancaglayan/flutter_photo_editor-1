import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

abstract class DragableWidgetChild {}

class DragableWidgetTextChild extends DragableWidgetChild {
  DragableWidgetTextChild({
    required this.text,
    this.textAlign,
    this.textStyle,
    this.color = Colors.white,
    this.fontSize = 16,
    this.fontStyle,
    this.fontWeight,
    this.animatedTextKit,
  });

  String text;
  TextAlign? textAlign;
  TextStyle? textStyle;
  Color? color;
  double? fontSize;
  FontStyle? fontStyle;
  FontWeight? fontWeight;
  AnimatedTextKit? animatedTextKit;

  DragableWidgetTextChild copyWith({
    String? text,
    TextAlign? textAlign,
    TextStyle? textStyle,
    Color? color,
    double? fontSize,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    AnimatedTextKit? animatedTextKit,
  }) {
    return DragableWidgetTextChild(
      text: text ?? this.text,
      textAlign: textAlign ?? this.textAlign,
      textStyle: textStyle ?? this.textStyle,
      color: color ?? this.color,
      fontSize: fontSize ?? this.fontSize,
      fontStyle: fontStyle ?? this.fontStyle,
      fontWeight: fontWeight ?? this.fontWeight,
      animatedTextKit: animatedTextKit ?? this.animatedTextKit,
    );
  }
}
