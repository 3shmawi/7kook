import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hokok/screen/main/component/shared_widget/chat_button_widget.dart';
import 'package:hokok/unit/assets_manager.dart';
import 'package:hokok/unit/color_manager.dart';
import 'package:hokok/unit/components/shared_widget.dart';
import 'package:hokok/unit/font_manager.dart';
import 'package:hokok/unit/strings_manager.dart';
import 'package:hokok/unit/values_manager.dart';

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
              _backButton(context),
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
                padding: const EdgeInsets.all(8.0),
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
          const SizedBox(height: 1),
          Row(
            children: [
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SvgPicture.asset(
                    AssetsManager.attachedIcon,
                    color: ColorManager.grey,
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
                onTap: (){},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: ColorManager.primary,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    AssetsManager.sendIcon,
                    fit: BoxFit.cover,
                    height: 20,
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
              margin: const EdgeInsets.only(right: 50, bottom: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: ColorManager.grey.withOpacity(0.22),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const TextWidget(
                text: AppStrings.helpCenter,
                fontSize: FontSize.s11,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(5, 10, 1, 0),
            height: 38,
            width: 65,
            decoration: BoxDecoration(
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
            padding: const EdgeInsets.fromLTRB(5, 10, 1, 0),
            height: 38,
            width: 65,
            decoration: BoxDecoration(
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
              margin: const EdgeInsets.only(left: 50, bottom: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: ColorManager.grey.withOpacity(0.22),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const TextWidget(
                text: AppStrings.helpCenter,
                fontSize: FontSize.s11,
              ),
            ),
          ),
        ],
      );

  InkWell _backButton(context) => InkWell(
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
            color: ColorManager.white.withOpacity(AppSize.s0_49),
          ),
        ),
      );
}
