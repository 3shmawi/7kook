import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokok/unit/font_manager.dart';
import 'package:hokok/unit/shared_widget/text.dart';

import '../assets_manager.dart';
import '../color_manager.dart';
import '../values_manager.dart';

class DefaultBackButton extends StatelessWidget {
  const DefaultBackButton({
    this.height,
    this.width,
    this.color,
    this.edgeInsets,
    Key? key,
  }) : super(key: key);

  final Color? color;
  final double? height;
  final double? width;
  final EdgeInsets? edgeInsets;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(),
      borderRadius: BorderRadius.circular(AppSize.s10),
      child: Padding(
        padding: edgeInsets ??
            const EdgeInsets.only(
              top: AppPadding.p10,
              right: AppPadding.p15,
              bottom: AppPadding.p2,
              left: AppPadding.p5,
            ),
        child: SvgPicture.asset(
          AssetsManager.backIcon,
          height: height ?? AppSize.s50,
          width: width ?? AppSize.s15,
          colorFilter: ColorFilter.mode(
            color ?? ColorManager.white.withOpacity(AppOpacity.c0_49),
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}

//*********
class DefaultElevatedButton extends StatelessWidget {
  const DefaultElevatedButton(
    this.text, {
    this.btnColor,
    this.txtColor,
    this.size,
    this.fontSize,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final Color? btnColor;
  final Color? txtColor;
  final double? fontSize;
  final VoidCallback? onPressed;

  final Size? size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor ?? ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s25),
        ),
        minimumSize: size ?? const Size(AppSize.s199, AppSize.s58),
      ),
      child: DefaultText(
        text,
        textAlign: TextAlign.center,
        color: txtColor ?? ColorManager.white,
        fontSize: fontSize ?? FontSize.s23,
      ),
    );
  }
}

//*********
class DefaultOUtLinedButton extends StatelessWidget {
  const DefaultOUtLinedButton(
    this.text, {
    this.btnColor,
    this.txtColor,
    this.size,
    this.fontSize,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final Color? btnColor;
  final Color? txtColor;
  final double? fontSize;
  final VoidCallback? onPressed;

  final Size? size;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: size ?? const Size(AppSize.s117, AppSize.s25),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s30),
        ),
      ),
      child: DefaultText(
        text,
        color: txtColor ?? ColorManager.primary,
        fontSize: fontSize ?? FontSize.s11,
      ),
    );
  }
}
