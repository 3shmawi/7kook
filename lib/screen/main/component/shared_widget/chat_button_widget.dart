import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokok/unit/strings_manager.dart';
import 'package:hokok/unit/values_manager.dart';

import '../../../../unit/assets_manager.dart';
import '../../../../unit/color_manager.dart';
import '../../../../unit/font_manager.dart';
import '../../../../unit/shared_widget/text.dart';

class ChatButtonWidget extends StatelessWidget {
  const ChatButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        Container(
          height: AppSize.s127,
          width: AppSize.s127,
          decoration: BoxDecoration(
            color: ColorManager.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: ColorManager.grey,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          child: const Center(
            child: DefaultText(
              AppStrings.chatText,
              fontSize: FontSize.s32,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          height: AppSize.s63,
          width: AppSize.s63,
          right: AppSize.s50,
          bottom: AppSize.s60,
          child: _iconCircle(AssetsManager.personIcon),
        ),
        Positioned(
          height: AppSize.s63,
          width: AppSize.s63,
          left: AppSize.s50,
          bottom: AppSize.s64,
          child: _iconCircle(AssetsManager.chatIcon),
        ),
      ],
    );
  }
}

Container _iconCircle(String icon) => Container(
      padding: const EdgeInsets.all(AppPadding.p14),
      decoration: BoxDecoration(
        color: ColorManager.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: ColorManager.grey,
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      child: SvgPicture.asset(
        icon,
        colorFilter: const ColorFilter.mode(
          ColorManager.primary,
          BlendMode.srcIn,
        ),
      ),
    );
