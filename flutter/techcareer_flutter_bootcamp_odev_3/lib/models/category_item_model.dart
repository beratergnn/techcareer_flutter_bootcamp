import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategoryItemModel {
  final String title;
  final String imagePath;

  CategoryItemModel({required this.imagePath, required this.title});

  static List<CategoryItemModel> getItems(BuildContext context) {
    List<CategoryItemModel> categoryItems = [];
    var loc = AppLocalizations.of(context);
    categoryItems.add(CategoryItemModel(
      title: loc!.mountain,
      imagePath: 'assets/ic_mountain.png',
    ));
    categoryItems.add(CategoryItemModel(
      title: loc.waterfall,
      imagePath: 'assets/ic_waterfall.png',
    ));
    categoryItems.add(CategoryItemModel(
      title: loc.river,
      imagePath: 'assets/ic_river.png',
    ));
    categoryItems.add(CategoryItemModel(
      title: loc.forest,
      imagePath: 'assets/ic_forest.png',
    ));

    return categoryItems;
  }
}
