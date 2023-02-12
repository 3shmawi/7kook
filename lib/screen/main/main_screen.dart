import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hokok/screen/main/component/cubit/main_cubit.dart';
import 'package:hokok/screen/main/component/cubit/main_state.dart';
import 'package:hokok/screen/main/component/shared_widget/chat_button_widget.dart';
import 'package:hokok/unit/assets_manager.dart';
import 'package:hokok/unit/color_manager.dart';
import 'package:hokok/unit/font_manager.dart';
import 'package:hokok/unit/routes_manager.dart';
import 'package:hokok/unit/strings_manager.dart';

import '../../unit/constants_manager.dart';
import '../../unit/shared_widget/text.dart';
import '../../unit/values_manager.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: AppPadding.p26,
        left: AppPadding.p37,
        bottom: AppPadding.p0,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _header(),
            _space(AppSize.s20),
            _categories(),
            _space(AppSize.s35),
            _advertisementCard(),
            _space(AppSize.s143),
            InkWell(
              borderRadius: BorderRadius.circular(AppSize.s15),
              onTap: () =>
                  Navigator.of(context).pushNamed(Routes.talkWithUsRoute),
              child: const ChatButtonWidget(),
            ),
            _space(AppSize.s177),
          ],
        ),
      ),
    );
  }

  DefaultText _header() => const DefaultText(
        AppStrings.classification,
        fontSize: FontSize.s25,
        fontWeight: FontWeightManager.w400,
      );

  SizedBox _space(double space) => SizedBox(height: space);

  BlocBuilder _categories() => BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          var cubit = context.read<MainCubit>();
          return Container(
            padding: const EdgeInsets.fromLTRB(
              AppPadding.p20,
              AppPadding.p0,
              AppPadding.p20,
              AppPadding.p10,
            ),
            width: AppSize.s312,
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
              border: Border.all(width: AppSize.s0_5, color: ColorManager.grey),
              borderRadius: BorderRadius.circular(AppSize.s50),
            ),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: AppConstants.crossAxisCount,
              crossAxisSpacing: AppSize.s10,
              mainAxisSpacing: AppSize.s20,
              childAspectRatio: 1 / AspectRatioSize.a1,
              children: List.generate(
                cubit.categories.length,
                (index) => _categoryItem(
                  cubit.categories[index].title,
                  cubit.categories[index].image,
                  _isPrimeColor(index),
                ),
              ),
            ),
          );
        },
      );

  bool _isPrimeColor(int index) {
    return (index == 4 || index == 5 || index == 3 || index == 10 || index == 9)
        ? false
        : true;
  }

  Container _categoryItem(String title, String image,
          [bool primeColor = true]) =>
      Container(
        padding: const EdgeInsets.all(AppPadding.p5),
        width: AppSize.s70,
        height: AppSize.s64,
        decoration: BoxDecoration(
          color: primeColor ? ColorManager.primary : ColorManager.secondary,
          borderRadius: BorderRadius.circular(AppSize.s16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p5,
                  vertical: AppPadding.p2_6,
                ),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: AppIntegerNum.i2,
                  style: const TextStyle(
                      color: ColorManager.white,
                      fontFamily: FontConstants.fontFamily),
                ),
              ),
            ),
            CircleAvatar(
              radius: AppSize.s12,
              backgroundColor: ColorManager.white,
              child: SvgPicture.asset(
                image,
                height: AppSize.s14,
              ),
            ),
          ],
        ),
      );

  SizedBox _advertisementCard() => SizedBox(
        height: AppSize.s150,
        width: double.infinity,
        child: SvgPicture.asset(
          AssetsManager.advertisementImage,
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(
            ColorManager.secondary,
            BlendMode.srcIn,
          ),
        ),
      );
}
