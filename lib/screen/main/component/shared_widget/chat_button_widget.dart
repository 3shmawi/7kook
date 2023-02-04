import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokok/unit/strings_manager.dart';

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
          height: 127,
          width: 127,
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
            child: TextWidget(
              fontSize: 32,
              text: AppStrings.chatText,
              textAlign: TextAlign.center,
              fontWeight: FontWeightManager.w400,
            ),
          ),
        ),
        Positioned(
          height: 63,
          width: 63,
          right: 50,
          bottom: 60,
          child: _iconCircle(AssetsManager.personIcon),
        ),
        Positioned(
          height: 63,
          width: 63,
          left: 50,
          bottom: 64,
          child: _iconCircle(AssetsManager.chatIcon),
        ),
      ],
    );
  }
}


Container _iconCircle(String icon)=>Container(

  padding: const EdgeInsets.all(14.0),
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
    color: ColorManager.primary,
    fit: BoxFit.cover,
  ),
);