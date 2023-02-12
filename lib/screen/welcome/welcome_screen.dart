import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hokok/unit/assets_manager.dart';
import 'package:hokok/unit/color_manager.dart';
import 'package:hokok/unit/constant.dart';
import 'package:hokok/unit/font_manager.dart';
import 'package:hokok/unit/routes_manager.dart';
import 'package:hokok/unit/strings_manager.dart';
import 'package:hokok/unit/values_manager.dart';

import '../../unit/shared_widget/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: AppSize.s101, width: double.infinity),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: AppStrings.welcome,
                    style: TextStyle(
                      color: ColorManager.secondary,
                      fontSize: FontSize.s48,
                      fontWeight: FontWeightManager.w600,
                      fontFamily: FontConstants.fontFamily,
                    ),
                  ),
                  TextSpan(
                    text: AppStrings.welcomeName,
                    style: TextStyle(
                      color: ColorManager.primary,
                      fontSize: FontSize.s39,
                      fontWeight: FontWeightManager.w600,
                      fontFamily: FontConstants.fontFamily,
                    ),
                  ),
                ],
              ),
            ),
      const SizedBox(height: AppSize.s57),
            const Text(
              AppStrings.createdAccount,
              style: TextStyle(
                fontSize: FontSize.s31,
                fontFamily: FontConstants.fontFamily,
                fontWeight: FontWeightManager.w400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppPadding.p22),
              child: SvgPicture.asset(AssetsManager.checkIcon),
            ),
            const Text(
              AppStrings.join,
              style: TextStyle(
                fontSize: FontSize.s25,
                fontFamily: FontConstants.fontFamily,
                fontWeight: FontWeightManager.w400,
              ),
            ),
            const SizedBox(height: AppSize.s64),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  AppStrings.quotation,
                  style: TextStyle(
                    color: ColorManager.primary,
                    fontSize: FontSize.s25,
                    fontFamily: FontConstants.fontFamily,
                    fontWeight: FontWeightManager.w400,
                  ),
                ),
                SizedBox(width: AppSize.s234),
                Text(
                  AppStrings.quotation,
                  style: TextStyle(
                    color: ColorManager.primary,
                    fontSize: FontSize.s25,
                    fontFamily: FontConstants.fontFamily,
                    fontWeight: FontWeightManager.w400,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(AppPadding.p10),
              child: Text(
                AppStrings.message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: FontSize.s13,
                  fontFamily: FontConstants.fontFamily,
                  fontWeight: FontWeightManager.w400,
                ),
              ),
            ),
            SvgPicture.asset(
              AssetsManager.messageIcon,
              colorFilter: const ColorFilter.mode(ColorManager.secondary,BlendMode.srcIn),
              width: AppSize.s25,
              height: AppSize.s25,
            ),
            const SizedBox(height: AppSize.s104),
            DefaultElevatedButton(
              AppStrings.loginNow,
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed(Routes.layoutRoute),
            ),
          ],
        ),
      ),
    );
  }
}
