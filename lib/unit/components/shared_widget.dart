import 'package:flutter/cupertino.dart';
import 'package:hokok/unit/constant.dart';

import '../font_manager.dart';

Widget textWidget({
  required String text,
  required double fontSize,
  Color? color,
  FontWeight? fontWeight,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: TextStyle(
      fontSize: fontSize,
      color: color ?? ConstantColor.secondaryColor,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontFamily: FontConstants.fontFamily,
    ),
  );
}

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
