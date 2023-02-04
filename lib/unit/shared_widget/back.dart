import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../assets_manager.dart';
import '../color_manager.dart';
import '../values_manager.dart';

class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(),
      borderRadius: BorderRadius.circular(AppSize.s10),
      child: Padding(
        padding: const EdgeInsets.only(
          top: AppPadding.p10,
          right: AppPadding.p15,
          bottom: AppPadding.p2,
          left: AppPadding.p5,
        ),
        child: SvgPicture.asset(
          AssetsManager.backIcon,
          color: ColorManager.white.withOpacity(AppOpacity.c0_49),
        ),
      ),
    );
  }
}
