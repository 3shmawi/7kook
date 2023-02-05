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

class TalkWithUsScreen extends StatefulWidget {
  const TalkWithUsScreen({Key? key}) : super(key: key);

  @override
  State<TalkWithUsScreen> createState() => _TalkWithUsScreenState();
}

class _TalkWithUsScreenState extends State<TalkWithUsScreen> {
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
                padding: const EdgeInsets.all(AppPadding.p20),
                height: AppSize.s500,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(AppSize.s50),
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

  Column _body() => Column(
        children: [
          const SizedBox(
            height: AppSize.s20,
          ),
          const DefaultText(
            AppStrings.welcomeTab,
            fontSize: FontSize.s19,
          ),
          const SizedBox(
            height: AppSize.s15,
          ),
          Container(
            height: AppSize.s40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s15),
              border: Border.all(
                width: AppSize.s1,
                color: ColorManager.grey,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppPadding.p2,
                    right: AppPadding.p10,
                  ),
                  child: SvgPicture.asset(
                    AssetsManager.searchIcon,
                    color: ColorManager.primary,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    style: const TextStyle(fontSize: FontSize.s13),
                    decoration: const InputDecoration(
                      hintText: AppStrings.searchTab,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppPadding.p5,
                        vertical: AppPadding.p10,
                      ),
                      hintStyle: TextStyle(fontSize: FontSize.s13),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: AppSize.s20,
          ),
          const DefaultText(
            AppStrings.subjectsTab,
            fontSize: FontSize.s19,
          ),
          const SizedBox(
            height: AppSize.s20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: double.infinity,
              ),
              _btnHeader(
                AppStrings.chooseBestTab,
                AppSize.s12,
                onTap: () {},
              ),
              _btnHeader(
                AppStrings.contactWithTab,
                AppSize.s9,
                onTap: () {},
              ),
              _btnHeader(
                AppStrings.searchAboutTab,
                AppSize.s12,
                onTap: () {},
              ),
              _btnHeader(
                AppStrings.addProposalTab,
                AppSize.s20,
                onTap: () {},
              ),
            ],
          ),
          const DefaultText(
            AppStrings.didFindTab,
            fontSize: FontSize.s19,
          ),
          const SizedBox(
            height: AppSize.s15,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(
              AppPadding.p11,
              AppPadding.p10,
              AppPadding.p12,
              AppPadding.p0,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorManager.secondary,
              ),
              borderRadius: BorderRadius.circular(AppSize.s15),
            ),
            child: Column(
              children: [
                const DefaultText(
                  AppStrings.talkWithUsTab,
                  fontSize: FontSize.s29,
                ),
                SvgPicture.asset(
                  AssetsManager.chatIcon,
                  color: ColorManager.secondary,
                  height: AppSize.s20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(AppSize.s72, AppSize.s25),
                    backgroundColor: ColorManager.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s15),
                    ),
                  ),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(Routes.chatRoute),
                  child: const DefaultText(
                    AppStrings.startNowTab,
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
          )
        ],
      );

  Padding _btnHeader(String txt, double space, {GestureTapCallback? onTap}) =>
      Padding(
        padding: EdgeInsets.only(bottom: space),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(AppSize.s15),
          hoverColor: ColorManager.secondary,
          child: DefaultText(
            txt,
            fontSize: FontSize.s13,
          ),
        ),
      );
}
