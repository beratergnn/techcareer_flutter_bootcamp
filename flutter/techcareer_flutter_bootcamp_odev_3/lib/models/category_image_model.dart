import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategoryImageModel {
  final String imagePath;
  final String title;
  final String location;
  final String price;

  CategoryImageModel(
      {required this.imagePath,
      required this.title,
      required this.location,
      required this.price});

  static List<CategoryImageModel> getImages(BuildContext context) {
    List<CategoryImageModel> categoryImage = [];
    var loc = AppLocalizations.of(context);
    categoryImage.add(
      CategoryImageModel(
          title: loc!.rinjaniMountain,
          imagePath: 'assets/ic_cat_image1.png',
          location: 'Lombok, Indonesia',
          price: '${loc.kur}48'),
    );
    categoryImage.add(
      CategoryImageModel(
          title: loc.bromoMountain,
          imagePath: 'assets/ic_cat_image2.png',
          location: 'East Java, Indonesia',
          price: '${loc.kur}52'),
    );

    return categoryImage;
  }
}
