import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokok/screen/browse_order/browse_order_screen.dart';
import 'package:hokok/screen/find_lawyer/find_lawyer_screen.dart';
import 'package:hokok/screen/layout/cubit/layout_cubit.dart';
import 'package:hokok/screen/layout/cubit/layout_state.dart';
import 'package:hokok/screen/main/main_screen.dart';
import 'package:hokok/unit/assets_manager.dart';
import 'package:hokok/unit/color_manager.dart';
import 'package:hokok/unit/font_manager.dart';
import 'package:hokok/unit/strings_manager.dart';
import 'package:hokok/unit/values_manager.dart';

import '../../unit/constants_manager.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: AppIntegerNum.i3,
      child: Scaffold(
        body: Column(
          children: [
            _appBar(),
            _tabsBar(),
            _body(),
          ],
        ),
      ),
    );
  }

  Container _appBar() => Container(
        color: ColorManager.primary,
        height: AppSize.s150,
        width: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: AppPadding.p128,
                right: AppPadding.p105,
                top: AppPadding.p0,
              ),
              child: SvgPicture.asset(
                AssetsManager.logoIcon,
                height: AppSize.s142,
                width: AppSize.s142,
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(AppOpacity.c0_65),
                  BlendMode.srcIn,
                ),
              ),
            ),
            Positioned(
              width: AppSize.s31,
              height: AppSize.s14,
              right: AppSize.s10,
              top: AppSize.s104,
              child: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  AssetsManager.menuIcon,
                ),
              ),
            ),
            Positioned(
              width: AppSize.s15_5,
              height: AppSize.s17_4,
              left: AppSize.s124,
              top: AppSize.s106,
              child: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  AssetsManager.searchIcon,
                ),
              ),
            ),
            Positioned(
              top: AppSize.s105,
              left: AppSize.s90,
              height: AppSize.s19_5,
              width: AppSize.s21_4,
              child: GestureDetector(
                onTap: () {},
                child: Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        AssetsManager.messageIcon,
                      ),
                    ),
                    Positioned(
                      height: AppSize.s7,
                      width: AppSize.s7,
                      right: AppSize.s3,
                      bottom: AppSize.s0_5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorManager.secondary,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: ColorManager.secondary,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: AppSize.s103,
              left: AppSize.s55,
              height: AppSize.s19_5,
              width: AppSize.s20_3,
              child: GestureDetector(
                onTap: () {},
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      AssetsManager.notificationIcon,
                    ),
                    Positioned(
                      height: AppSize.s7,
                      width: AppSize.s7,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorManager.secondary,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: ColorManager.secondary,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: AppSize.s96,
              left: AppSize.s10,
              height: AppSize.s37,
              width: AppSize.s37,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorManager.grey,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  BlocBuilder _tabsBar() => BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          var cubit = context.read<LayoutCubit>();
          return TabBar(
            onTap: (index) {
              cubit.changeIndex(index);
            },
            labelPadding:
                const EdgeInsets.symmetric(horizontal: AppPadding.p22),
            splashBorderRadius: BorderRadius.circular(AppSize.s12),
            splashFactory: InkSplash.splashFactory,
            indicatorPadding: EdgeInsets.zero,
            labelStyle: const TextStyle(
              fontWeight: FontWeightManager.w400,
              fontFamily: FontConstants.fontFamily,
            ),
            isScrollable: true,
            padding: EdgeInsets.zero,
            dividerColor: Colors.transparent,
            labelColor: ColorManager.primary,
            unselectedLabelColor: ColorManager.secondary,
            indicatorColor: Colors.transparent,
            tabs: [
              _tab(cubit.index, 0, AppStrings.main),
              _tab(cubit.index, 1, AppStrings.findLawyer),
              _tab(cubit.index, 2, AppStrings.browse),
            ],
          );
        },
      );

  Expanded _body() => const Expanded(
        child: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            MainScreen(),
            FindLawyerScreen(),
            BrowseOrderScreen(),
          ],
        ),
      );

  Stack _tab(int index, int count, String text) => Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          AnimatedCrossFade(
            firstChild: const SizedBox(),
            secondChild: Container(
              decoration: BoxDecoration(
                  color: ColorManager.secondary,
                  borderRadius: BorderRadius.circular(AppSize.s40)),
              width: AppSize.s37,
              height: AppSize.s4,
              padding: EdgeInsets.zero,
            ),
            crossFadeState: index == count
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration:
                const Duration(milliseconds: AppConstants.lineAnimationTime),
          ),
          Tab(
            text: text,
          ),
        ],
      );
}
