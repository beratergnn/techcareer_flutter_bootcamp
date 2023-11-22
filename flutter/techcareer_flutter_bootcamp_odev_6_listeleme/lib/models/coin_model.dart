import 'package:flutter/material.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/components/custom_line_decline.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/components/custom_line_rise.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/components/custom_line_decline2.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/components/custom_line_rise2.dart';

class CoinModel {
  final String coinName;
  final String coinTag;
  final String coinMarketCap;
  final Widget coinGraphic; // Sadece burada tanımlanmış
  final String coinPrice;
  final String coinRateOfChange;
  final bool coinIsStar;
  final bool coinIsRise;

  CoinModel(
      {required this.coinName,
      required this.coinTag,
      required this.coinMarketCap,
      required this.coinGraphic, // Burada sadece isimli parametre olarak kullanılmış
      required this.coinPrice,
      required this.coinRateOfChange,
      required this.coinIsStar,
      required this.coinIsRise});

  static List<CoinModel> getDestinations() {
    List<CoinModel> destinationItems = [];

    destinationItems.add(
      CoinModel(
        coinName: 'Bitcoin',
        coinTag: 'BTC',
        coinMarketCap: '316',
        coinGraphic: riseLine(),
        coinRateOfChange: '+1.70',
        coinIsStar: true,
        coinPrice: '1,066,394.75',
        coinIsRise: true,
      ),
    );

    destinationItems.add(
      CoinModel(
        coinName: 'Avalanche',
        coinTag: 'AVAX',
        coinMarketCap: '286K',
        coinGraphic: declineLine(),
        coinRateOfChange: '-8.35',
        coinIsStar: false,
        coinPrice: '581.75',
        coinIsRise: false,
      ),
    );

    destinationItems.add(
      CoinModel(
        coinName: 'Skale',
        coinTag: 'SKL',
        coinMarketCap: '210M',
        coinGraphic: declineLine2(),
        coinRateOfChange: '-0.30',
        coinIsStar: false,
        coinPrice: '1.5150',
        coinIsRise: false,
      ),
    );

    destinationItems.add(
      CoinModel(
        coinName: 'Blur',
        coinTag: 'BLUR',
        coinMarketCap: '18M',
        coinGraphic: riseLine2(),
        coinRateOfChange: '+32.35',
        coinIsStar: false,
        coinPrice: '14.335',
        coinIsRise: true,
      ),
    );

    destinationItems.add(
      CoinModel(
        coinName: 'Solana',
        coinTag: 'SOL',
        coinMarketCap: '23K',
        coinGraphic: riseLine(),
        coinRateOfChange: '+4.75',
        coinIsStar: true,
        coinPrice: '1,640.75',
        coinIsRise: true,
      ),
    );

    destinationItems.add(
      CoinModel(
        coinName: 'Pepe',
        coinTag: 'PEPE',
        coinMarketCap: '1T',
        coinGraphic: riseLine(),
        coinRateOfChange: '+1.97',
        coinIsStar: false,
        coinPrice: '0.00003220',
        coinIsRise: true,
      ),
    );

    destinationItems.add(
      CoinModel(
        coinName: 'Dogecoin',
        coinTag: 'DOGE',
        coinMarketCap: '11M',
        coinGraphic: riseLine(),
        coinRateOfChange: '+2.23',
        coinIsStar: false,
        coinPrice: '2.2149',
        coinIsRise: true,
      ),
    );

    destinationItems.add(
      CoinModel(
        coinName: 'Gala',
        coinTag: 'GALA',
        coinMarketCap: '38M',
        coinGraphic: riseLine(),
        coinRateOfChange: '+1.23',
        coinIsStar: false,
        coinPrice: '0.7090',
        coinIsRise: true,
      ),
    );

    return destinationItems;
  }
}
