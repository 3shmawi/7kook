import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hokok/screen/main/component/shared_widget/chat_button_widget.dart';
import 'package:hokok/unit/assets_manager.dart';
import 'package:hokok/unit/color_manager.dart';
import 'package:hokok/unit/font_manager.dart';
import 'package:hokok/unit/routes_manager.dart';
import 'package:hokok/unit/shared_widget/button.dart';
import 'package:hokok/unit/strings_manager.dart';
import 'package:hokok/unit/values_manager.dart';

import '../../unit/shared_widget/text.dart';

class ChatHelperScreen extends StatefulWidget {
  const ChatHelperScreen({Key? key}) : super(key: key);

  @override
  State<ChatHelperScreen> createState() => _ChatHelperScreenState();
}

class _ChatHelperScreenState extends State<ChatHelperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppPadding.p25,
            AppPadding.p55,
            AppPadding.p20,
            AppPadding.p20,
          ),
          child: Column(
            children: [
              const ChatButtonWidget(),
              Container(
                margin: const EdgeInsets.only(top: AppMargin.m16),
                height: AppSize.s500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(AppSize.s20),
                  border: Border.all(
                    width: AppSize.s1,
                    color: ColorManager.secondary,
                  ),
                ),
                child: _body(),
              ),
              const DefaultBackButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _body() => Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: Column(
                  children: [
                    _replyChatItem(),
                    _replyChatItem(),
                    _replyChatItem(),
                    _replyChatItem(),
                    _replyChatItem(),
                    _sendChatItem(),
                    _sendChatItem(),
                    _replyChatItem(),
                    _replyChatItem(),
                    _replyChatItem(),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSize.s1),
          Row(
            children: [
              GestureDetector(
                onTap: ()=>Navigator.of(context).pushReplacementNamed(Routes.profileRoute),
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p5),
                  child: SvgPicture.asset(
                    AssetsManager.attachedIcon,
                    colorFilter: const ColorFilter.mode(
                      ColorManager.grey,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: AppSize.s40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSize.s15),
                    border: Border.all(
                      width: AppSize.s1,
                      color: ColorManager.grey,
                    ),
                  ),
                  child: TextFormField(
                    style: const TextStyle(fontSize: FontSize.s13),
                    decoration: const InputDecoration(
                      hintText: AppStrings.writeTab,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppPadding.p5,
                        vertical: AppPadding.p10,
                      ),
                      hintStyle: TextStyle(fontSize: FontSize.s13),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(AppPadding.p10),
                  margin: const EdgeInsets.all(AppMargin.m3),
                  decoration: const BoxDecoration(
                    color: ColorManager.primary,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    AssetsManager.sendIcon,
                    fit: BoxFit.cover,
                    height: AppSize.s20,
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  Row _replyChatItem() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                right: AppMargin.m55,
                bottom: AppMargin.m15,
              ),
              padding: const EdgeInsets.all(AppPadding.p10),
              decoration: BoxDecoration(
                color: ColorManager.grey.withOpacity(AppOpacity.c0_22),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(AppSize.s20),
                  topLeft: Radius.circular(AppSize.s20),
                  topRight: Radius.circular(AppSize.s20),
                ),
              ),
              child: const DefaultText(
                AppStrings.helpCenter,
                fontSize: FontSize.s11,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(
              AppPadding.p5,
              AppPadding.p10,
              AppPadding.p1,
              AppPadding.p0,
            ),
            height: AppSize.s38,
            width: AppSize.s65,
            decoration: const BoxDecoration(
              color: ColorManager.primary,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              AssetsManager.logoIcon,
              fit: BoxFit.cover,
            ),
          ),
        ],
      );

  Row _sendChatItem() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(
              AppPadding.p5,
              AppPadding.p10,
              AppPadding.p1,
              AppPadding.p0,
            ),
            height: AppSize.s38,
            width: AppSize.s65,
            decoration: const BoxDecoration(
              color: ColorManager.primary,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              AssetsManager.logoIcon,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                left: AppMargin.m50,
                bottom: AppMargin.m15,
              ),
              padding: const EdgeInsets.all(AppPadding.p10),
              decoration: BoxDecoration(
                color: ColorManager.grey.withOpacity(AppOpacity.c0_22),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(AppSize.s20),
                  topLeft: Radius.circular(AppSize.s20),
                  topRight: Radius.circular(AppSize.s20),
                ),
              ),
              child: const DefaultText(
                AppStrings.helpCenter,
                fontSize: FontSize.s11,
              ),
            ),
          ),
        ],
      );
}
