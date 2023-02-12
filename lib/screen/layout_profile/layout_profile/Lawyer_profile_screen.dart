import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokok/unit/color_manager.dart';
import 'package:hokok/unit/strings_manager.dart';

import '../../../unit/assets_manager.dart';
import '../../../unit/constants_manager.dart';
import '../../../unit/font_manager.dart';
import '../../../unit/shared_widget/button.dart';
import '../../../unit/shared_widget/text.dart';
import '../../../unit/values_manager.dart';

class LawyerProfileScreen extends StatefulWidget {
  const LawyerProfileScreen({Key? key}) : super(key: key);

  @override
  State<LawyerProfileScreen> createState() => _LawyerProfileScreenState();
}

class _LawyerProfileScreenState extends State<LawyerProfileScreen> {
  bool state = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: double.infinity,
              height: AppSize.s20,
            ),

            _header(AppStrings.aboutMe),
            const SizedBox(height: AppSize.s50),
            AnimatedCrossFade(
              firstChild: _about(),
              secondChild: _aboutMore(),
              crossFadeState:
                  state ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: AppConstants.splashMoreDelay),
            ),
            const SizedBox(
              height: AppSize.s79,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: DefaultElevatedButton(
                AppStrings.notes,
                onPressed: () {},
                size: const Size(AppSize.s150, AppSize.s34),
                fontSize: FontSize.s16,
              ),
            ),
            const SizedBox(
              height: AppSize.s79,
            ),
          ],
        ),
      ),
    );
  }

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
                      state = false;
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
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
      );

  Container _header(String header, [double fontSize = FontSize.s28]) =>
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
}
