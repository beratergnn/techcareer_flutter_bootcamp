import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PopularDestinationModel {
  final String imagePath;
  final String title;
  final String location;
  final String description;
  final String price;

  PopularDestinationModel(
      {required this.imagePath,
      required this.title,
      required this.location,
      required this.description,
      required this.price});

  static List<PopularDestinationModel> getDestinations(BuildContext context) {
    List<PopularDestinationModel> destinationItems = [];
    var loc = AppLocalizations.of(context);
    destinationItems.add(PopularDestinationModel(
      title: loc!.thePinkBeach,
      location: 'Komodo Island, Indonesia',
      description: loc.thePinkBeachDes,
      price: '${loc.kur}48',
      imagePath: 'assets/ic_pink_beach.png',
    ));
    destinationItems.add(PopularDestinationModel(
      title: loc.meruTower,
      location: 'Bali, Indonesia',
      description: loc.meruTowerDes,
      price: '${loc.kur}36',
      imagePath: 'assets/ic_meru_tower.png',
    ));
    destinationItems.add(PopularDestinationModel(
      title: loc.torajaLand,
      location: 'South Sulawesi, Indonesia',
      description: loc.torajaLandDes,
      price: '${loc.kur}48',
      imagePath: 'assets/ic_toraja_land.png',
    ));

    return destinationItems;
  }
}
