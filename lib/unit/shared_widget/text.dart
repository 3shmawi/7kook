import 'package:flutter/material.dart';

import '../constant.dart';
import '../font_manager.dart';

class DefaultText extends StatelessWidget {
  const DefaultText(
      this.text,{
    this.fontSize,
    this.color,
    this.fontWeight,
    this.textAlign,
    Key? key,
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        fontSize: fontSize ?? FontSize.s14,
        color: color ?? ConstantColor.secondaryColor,
        fontWeight: fontWeight ?? FontWeightManager.w400,
        fontFamily: FontConstants.fontFamily,
      ),
    );
  }
}
