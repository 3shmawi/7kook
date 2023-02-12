import 'package:flutter/material.dart';
import 'package:hokok/unit/routes_manager.dart';
import 'package:hokok/unit/shared_widget/text.dart';
import '../../unit/color_manager.dart';
import '../../unit/font_manager.dart';
import '../../unit/shared_widget/button.dart';
import '../../unit/strings_manager.dart';
import '../../unit/values_manager.dart';
import '../profile/component/profile_details_widget.dart';

class HireLawyerScreen extends StatefulWidget {
  const HireLawyerScreen({Key? key}) : super(key: key);

  @override
  State<HireLawyerScreen> createState() => _HireLawyerScreenState();
}

class _HireLawyerScreenState extends State<HireLawyerScreen> {
  List<String> items = [
    'إداري',
    'جزائية',
    'تجاري',
    'عمالي',
    'تنفيذ أحكام',
    'قطاع الشركات',
    'مروري',
    'لجان شبه قضائية',
    'عامة',
    'أخطاء طبية',
    'أحوال شخصية',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _appBar(),
                const SizedBox(height: AppSize.s18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    DefaultText(
                      AppStrings.quotation,
                      fontSize: FontSize.s25,
                    ),
                    SizedBox(width: AppSize.s277),
                    DefaultText(
                      AppStrings.quotation,
                      color: ColorManager.primary,
                      fontSize: FontSize.s25,
                    ),
                  ],
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'أرسل تفاصيل ماتريد الى',
                        style: TextStyle(
                          color: ColorManager.primary,
                          fontSize: FontSize.s19,
                          fontWeight: FontWeightManager.w400,
                          fontFamily: FontConstants.fontFamily,
                        ),
                      ),
                      TextSpan(
                        text: AppStrings.welcomeName,
                        style: TextStyle(
                          color: ColorManager.secondary,
                          fontSize: FontSize.s25,
                          fontWeight: FontWeightManager.w400,
                          fontFamily: FontConstants.fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: AppSize.s188,
                  width: AppSize.s283,
                  margin: const EdgeInsets.only(
                      top: AppMargin.m37, bottom: AppMargin.m18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSize.s25),
                    border: Border.all(
                      width: AppSize.s1,
                      color: ColorManager.grey,
                    ),
                  ),
                  child: TextFormField(
                    style: const TextStyle(fontSize: FontSize.s13),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppPadding.p15,
                        vertical: AppPadding.p10,
                      ),
                      hintStyle: TextStyle(fontSize: FontSize.s13),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: ColorManager.primary,
                          fontSize: FontSize.s14,
                          fontWeight: FontWeightManager.w400,
                          fontFamily: FontConstants.fontFamily,
                        ),
                      ),
                      TextSpan(
                        text: 'التصنيف',
                        style: TextStyle(
                          color: ColorManager.secondary,
                          fontSize: FontSize.s14,
                          fontWeight: FontWeightManager.w400,
                          fontFamily: FontConstants.fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
                DropdownButton(
                  value: items[0],
                  items: List.generate(
                    items.length,
                    (index) => DropdownMenuItem(
                      value: items[index],
                      child: Row(
                        children: [
                          const DefaultText('-'),
                          DefaultText(items[index]),
                        ],
                      ),
                    ),
                  ),
                  onChanged: (String? newItem) {},
                ),
                const SizedBox(height: AppSize.s18),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '*',
                        style: TextStyle(
                          color: ColorManager.primary,
                          fontSize: FontSize.s14,
                          fontWeight: FontWeightManager.w400,
                          fontFamily: FontConstants.fontFamily,
                        ),
                      ),
                      TextSpan(
                        text: 'المدة المتوقعة',
                        style: TextStyle(
                          color: ColorManager.secondary,
                          fontSize: FontSize.s14,
                          fontWeight: FontWeightManager.w400,
                          fontFamily: FontConstants.fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: AppSize.s36,
                  width: AppSize.s144,
                  margin: const EdgeInsets.only(bottom: AppMargin.m27),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: AppSize.s1,
                      color: ColorManager.grey,
                    ),
                  ),
                  child: TextFormField(
                    style: const TextStyle(fontSize: FontSize.s13),
                    keyboardType: TextInputType.multiline,
                    maxLines: 1,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppPadding.p5,
                        vertical: AppPadding.p15,
                      ),
                      hintStyle: TextStyle(fontSize: FontSize.s13),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '*',
                                style: TextStyle(
                                  color: ColorManager.primary,
                                  fontSize: FontSize.s14,
                                  fontWeight: FontWeightManager.w400,
                                  fontFamily: FontConstants.fontFamily,
                                ),
                              ),
                              TextSpan(
                                text: 'الميزانية المطروحة',
                                style: TextStyle(
                                  color: ColorManager.secondary,
                                  fontSize: FontSize.s12,
                                  fontWeight: FontWeightManager.w400,
                                  fontFamily: FontConstants.fontFamily,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: AppSize.s36,
                          width: AppSize.s127,
                          margin: const EdgeInsets.only(bottom: AppMargin.m18),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: AppSize.s1,
                              color: ColorManager.grey,
                            ),
                          ),
                          child: TextFormField(
                            style: const TextStyle(fontSize: FontSize.s13),
                            keyboardType: TextInputType.number,
                            maxLines: 1,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: AppPadding.p5,
                                vertical: AppPadding.p15,
                              ),
                              hintStyle: TextStyle(fontSize: FontSize.s13),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '*',
                                style: TextStyle(
                                  color: ColorManager.primary,
                                  fontSize: FontSize.s14,
                                  fontWeight: FontWeightManager.w400,
                                  fontFamily: FontConstants.fontFamily,
                                ),
                              ),
                              TextSpan(
                                text: 'بعد خصم النسبة',
                                style: TextStyle(
                                  color: ColorManager.secondary,
                                  fontSize: FontSize.s12,
                                  fontWeight: FontWeightManager.w400,
                                  fontFamily: FontConstants.fontFamily,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: AppSize.s36,
                          width: AppSize.s90,
                          margin: const EdgeInsets.only(bottom: AppMargin.m18),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: AppSize.s1,
                              color: ColorManager.grey,
                            ),
                          ),
                          child: TextFormField(
                            style: const TextStyle(fontSize: FontSize.s13),
                            keyboardType: TextInputType.number,
                            maxLines: 1,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: AppPadding.p5,
                                vertical: AppPadding.p15,
                              ),
                              hintStyle: TextStyle(fontSize: FontSize.s13),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                DefaultElevatedButton(
                  'ارسال',
                  onPressed: () => Navigator.of(context).pushNamed(Routes.layoutProfileRoute),
                  fontSize: FontSize.s19,
                  size: const Size(AppSize.s133, AppSize.s30),
                ),
              ],
            ),
          ),
          const DefaultBackButton(
            color: ColorManager.primary,
            height: AppSize.s27,
            edgeInsets: EdgeInsets.all(AppPadding.p15),
          )
        ],
      ),
    );
  }

  Container _appBar() => Container(
        width: double.infinity,
        height: AppSize.s234,
        color: ColorManager.primary,
        child: const ProfileDetailsWidget(
          paddingRight: AppPadding.p0,
          positionRight: AppSize.s88,
        ),
      );
}
