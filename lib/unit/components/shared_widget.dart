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

