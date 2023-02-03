import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hokok/unit/assets_manager.dart';
import 'package:hokok/unit/strings_manager.dart';


import '../../../../model/category_model.dart';
import 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  List<CategoriesModel> categories = [
    CategoriesModel(AppStrings.commercial, AssetsManager.commercialIcon),
    CategoriesModel(AppStrings.administrative, AssetsManager.administrativeIcon),
    CategoriesModel(AppStrings.penal, AssetsManager.penalIcon),
    CategoriesModel(AppStrings.labor, AssetsManager.laborIcon),
    CategoriesModel(AppStrings.execution, AssetsManager.executionIcon),
    CategoriesModel(AppStrings.execution, AssetsManager.executionIcon),
    CategoriesModel(AppStrings.conditions, AssetsManager.conditionsIcon),
    CategoriesModel(AppStrings.companies, AssetsManager.companiesIcon),
    CategoriesModel(AppStrings.errors, AssetsManager.errorsIcon),
    CategoriesModel(AppStrings.public, AssetsManager.publicIcon),
    CategoriesModel(AppStrings.committees, AssetsManager.committeesIcon),
  ];
}
