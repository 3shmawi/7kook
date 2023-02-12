import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hokok/unit/assets_manager.dart';
import 'package:hokok/unit/color_manager.dart';
import 'package:hokok/unit/font_manager.dart';
import 'package:hokok/unit/routes_manager.dart';
import 'package:hokok/unit/shared_widget/text.dart';
import 'package:hokok/unit/strings_manager.dart';
import 'package:hokok/unit/values_manager.dart';

import '../../unit/constants_manager.dart';
import '../../unit/shared_widget/button.dart';
import 'component/profile_details_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool state = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _appBar(context),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _header(AppStrings.aboutMe, FontSize.s30),
                  AnimatedCrossFade(
                    firstChild: _about(),
                    secondChild: _aboutMore(),
                    crossFadeState: state
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: const Duration(
                        seconds: AppConstants.splashMoreDelay),
                  ),
                  _header(AppStrings.statistics),
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p14),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  DefaultText(
                                    AppStrings.rating,
                                    fontSize: FontSize.s19,
                                    color: ColorManager.secondary
                                        .withOpacity(AppOpacity.c0_70),
                                  ),
                                  const Icon(Icons.star),
                                  const Icon(Icons.star),
                                  const Icon(Icons.star),
                                  const Icon(Icons.star),
                                  const DefaultText(
                                    "(4)",
                                    fontSize: FontSize.s12,
                                    color: ColorManager.secondary,
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSize.s16),
                              Row(
                                children: [
                                  DefaultText(
                                    AppStrings.agencies,
                                    fontSize: FontSize.s19,
                                    color: ColorManager.secondary
                                        .withOpacity(AppOpacity.c0_70),
                                  ),
                                  const DefaultText(
                                    "(4)",
                                    fontSize: FontSize.s12,
                                    color: ColorManager.secondary,
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSize.s12),
                              Row(
                                children: [
                                  DefaultText(
                                    AppStrings.tasks,
                                    fontSize: FontSize.s17,
                                    color: ColorManager.secondary
                                        .withOpacity(AppOpacity.c0_70),
                                  ),
                                  const Spacer(),
                                  Container(
                                    color: ColorManager.primary,
                                    child: const DefaultText(
                                      "100%",
                                      color: ColorManager.white,
                                      fontSize: FontSize.s11,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSize.s9),
                              Row(
                                children: [
                                  DefaultText(
                                    AppStrings.rate2,
                                    fontSize: FontSize.s15,
                                    color: ColorManager.secondary
                                        .withOpacity(AppOpacity.c0_70),
                                  ),
                                  const Spacer(),
                                  Container(
                                    color: ColorManager.secondary,
                                    child: const DefaultText(
                                      "60%",
                                      color: ColorManager.white,
                                      fontSize: FontSize.s11,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSize.s12),
                              Row(
                                children: [
                                  DefaultText(
                                    AppStrings.timing,
                                    fontSize: FontSize.s15,
                                    color: ColorManager.secondary
                                        .withOpacity(AppOpacity.c0_70),
                                  ),
                                  const Spacer(),
                                  Container(
                                    color: ColorManager.primary,
                                    child: const DefaultText(
                                      "100%",
                                      color: ColorManager.white,
                                      fontSize: FontSize.s11,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSize.s9),
                              Row(
                                children: [
                                  DefaultText(
                                    AppStrings.countTask,
                                    fontSize: FontSize.s15,
                                    color: ColorManager.secondary
                                        .withOpacity(AppOpacity.c0_70),
                                  ),
                                  const Spacer(),
                                  Container(
                                    color: ColorManager.secondary,
                                    child: const DefaultText(
                                      " 2 ",
                                      color: ColorManager.white,
                                      fontSize: FontSize.s11,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppSize.s9),
                              Row(
                                children: [
                                  DefaultText(
                                    AppStrings.date,
                                    fontSize: FontSize.s15,
                                    color: ColorManager.secondary
                                        .withOpacity(AppOpacity.c0_70),
                                  ),
                                  const Spacer(),
                                  Container(
                                    color: ColorManager.primary,
                                    child: const DefaultText(
                                      " أغسطس ,2022",
                                      color: ColorManager.white,
                                      fontSize: FontSize.s9,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DefaultText(
                              AppStrings.badges,
                              fontSize: FontSize.s14,
                              color: ColorManager.secondary
                                  .withOpacity(AppOpacity.c0_49),
                            ),
                            const SizedBox(height: AppSize.s12),
                            SvgPicture.asset(
                              AssetsManager.penal2Icon,
                              fit: BoxFit.none,
                              height: 55,
                              width: 69,
                            ),
                            Align(
                              alignment: AlignmentDirectional.center,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(right: AppMargin.m12),
                                height: 10,
                                width: 49,
                                decoration: BoxDecoration(
                                  color: ColorManager.secondary,
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s15),
                                ),
                                child: const DefaultText(
                                  'المحامي الملتزم',
                                  textAlign: TextAlign.center,
                                  fontSize: FontSize.s6,
                                  color: ColorManager.white,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                top: AppPadding.p69,
                                right: AppPadding.p12,
                                bottom: AppPadding.p8,
                              ),
                              child: DefaultBackButton(
                                color: ColorManager.primary,
                                height: AppSize.s40,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _appBar(BuildContext context) => Container(
        width: double.infinity,
        height: AppSize.s234,
        color: ColorManager.primary,
        child: Row(
          children: [
            const ProfileDetailsWidget(),
            _contacts(context),
          ],
        ),
      );

  Container _header(String header, [double fontSize = FontSize.s25]) =>
      Container(
        height: AppSize.s51,
        width: AppSize.s140,
        alignment: AlignmentDirectional.centerStart,
        margin: const EdgeInsets.only(top: AppMargin.m31),
        decoration: const BoxDecoration(
          color: ColorManager.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSize.s30),
            bottomLeft: Radius.circular(AppSize.s30),
          ),
        ),
        child: DefaultText(
          header,
          fontSize: fontSize,
          color: ColorManager.white,
        ),
      );

  Align _about() => Align(
        alignment: AlignmentDirectional.center,
        child: Container(
          width: AppSize.s272,
          height: AppSize.s180,
          margin: const EdgeInsets.only(top: AppMargin.m19),
          decoration: BoxDecoration(
            border: Border.all(
              width: AppSize.s2,
              color: ColorManager.secondary.withOpacity(AppOpacity.c0_65),
            ),
            borderRadius: BorderRadius.circular(AppSize.s50),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: AppPadding.p15,
                  right: AppPadding.p31,
                ),
                child: SvgPicture.asset(
                  AssetsManager.penIcon,
                  height: AppSize.s20,
                  width: AppSize.s20,
                  fit: BoxFit.none,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p10),
                child: DefaultText(
                  AppStrings.about,
                  fontSize: FontSize.s16,
                  color: ColorManager.secondary.withOpacity(AppOpacity.c0_70),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: DefaultOUtLinedButton(
                  AppStrings.more,
                  onPressed: () {
                    setState(() {
                      state= false;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      );

  Align _aboutMore() => Align(
        alignment: AlignmentDirectional.center,
        child: Container(
          width: AppSize.s303,
          height: AppSize.s444,
          margin: const EdgeInsets.only(top: AppMargin.m19),
          decoration: BoxDecoration(
            border: Border.all(
              width: AppSize.s2,
              color: ColorManager.secondary.withOpacity(AppOpacity.c0_65),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: AppPadding.p15,
                  right: AppPadding.p31,
                ),
                child: SvgPicture.asset(
                  AssetsManager.penIcon,
                  height: AppSize.s20,
                  width: AppSize.s20,
                  fit: BoxFit.none,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p10),
                child: DefaultText(
                  AppStrings.about,
                  fontSize: FontSize.s16,
                  color: ColorManager.secondary.withOpacity(AppOpacity.c0_70),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p10),
                child: DefaultText(
                  AppStrings.about,
                  fontSize: FontSize.s16,
                  color: ColorManager.secondary.withOpacity(AppOpacity.c0_70),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional.center,
                child: DefaultText(
                  AppStrings.certificates,
                  color: ColorManager.primary,
                  fontSize: FontSize.s16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p12),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 93,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorManager.secondary, width: 1),
                          borderRadius: BorderRadius.circular(AppSize.s15),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSize.s12),
                    Expanded(
                      child: Container(
                        height: 106,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorManager.secondary, width: 1),
                          borderRadius: BorderRadius.circular(AppSize.s15),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSize.s12),
                    Expanded(
                      child: Container(
                        height: 93,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorManager.secondary, width: 1),
                          borderRadius: BorderRadius.circular(AppSize.s15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Align(
                alignment: AlignmentDirectional.center,
                child: DefaultOUtLinedButton(
                  AppStrings.less,
                  onPressed: () {
                    state = true;
                    setState(() {

                    });
                  },
                ),
              ),
            ],
          ),
        ),
      );

  Expanded _contacts(BuildContext context) => Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _contactTab(
              AppMargin.m79,
              AppSize.s103,
              AssetsManager.addIcon,
              AppStrings.hire,
              onTap: () =>Navigator.of(context).pushNamed(Routes.hiringRoute),
            ),
            _contactTab(
              AppMargin.m27,
              AppSize.s133,
              AssetsManager.chatIcon,
              AppStrings.contactMe,
              onTap: () {},
              isContactBtn: true,
            ),
          ],
        ),
      );

  Container _contactTab(
    double top,
    double width,
    String icon,
    String txt, {
    GestureTapCallback? onTap,
    bool isContactBtn = false,
  }) =>
      Container(
        margin: EdgeInsets.only(
          top: top,
          left: AppMargin.m30,
        ),
        height: AppSize.s30,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s10),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(15),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: AppSize.s30,
                  color: ColorManager.secondary,
                  child: Row(
                    children: [
                      const SizedBox(width: AppSize.s3),
                      SvgPicture.asset(
                        icon,
                        height: isContactBtn ? AppSize.s16 : AppSize.s20,
                        width: AppSize.s15,
                        colorFilter: const ColorFilter.mode(
                          ColorManager.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: AppSize.s3),
                      DefaultText(
                        txt,
                        color: ColorManager.white,
                        fontSize: isContactBtn ? FontSize.s14 : FontSize.s15,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: AppSize.s30,
                width: AppSize.s34,
                color: ColorManager.white,
                child: SvgPicture.asset(
                  AssetsManager.downIcon,
                  height: AppSize.s10,
                  width: AppSize.s12,
                  fit: BoxFit.none,
                ),
              ),
            ],
          ),
        ),
      );
}
