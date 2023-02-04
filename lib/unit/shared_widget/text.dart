import 'package:flutter/material.dart';

import '../constant.dart';
import '../font_manager.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    required this.text,
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
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize ?? FontSize.s14,
        color: color ?? ConstantColor.secondaryColor,
        fontWeight: fontWeight ?? FontWeightManager.normal,
        fontFamily: FontConstants.fontFamily,
      ),
    );
  }
}
