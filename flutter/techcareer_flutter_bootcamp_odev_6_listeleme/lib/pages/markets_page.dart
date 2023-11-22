import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/components/custom_category.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/components/custom_item.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/constants/colors.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/models/coin_model.dart';

class MarketsPage extends StatelessWidget {
  MarketsPage({super.key});

  List<CoinModel> destinationItems = [];

  void _getInitialInfo() {
    destinationItems = CoinModel.getDestinations();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    Size screnSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          'Piyasalar',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: tabColor,
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              children: [
                Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: secondTextColor.withOpacity(.4),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.star_outline,
                      color: textColor,
                      size: 20,
                    )),
                VerticalDivider(
                  color: secondTextColor.withOpacity(.4),
                ),
                CustomCategory(
                  title: 'TL',
                  bgColor: riseColor,
                ),
                SizedBox(width: 8),
                CustomCategory(
                  title: 'USDT',
                  bgColor: secondTextColor.withOpacity(.4),
                ),
                VerticalDivider(
                  color: secondTextColor.withOpacity(.4),
                ),
                CustomCategory(
                  title: 'FAN',
                  bgColor: secondTextColor.withOpacity(.4),
                ),
                SizedBox(width: 8),
                CustomCategory(
                  title: 'BOX',
                  bgColor: secondTextColor.withOpacity(.4),
                ),
              ],
            ),
          ),
          Container(
            height: screnSize.height - 216,
            child: ListView.builder(
                itemCount: destinationItems.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return CoinInfoContainer(
                    coinIsStar: destinationItems[index].coinIsStar,
                    coinName: destinationItems[index].coinName,
                    coinTag: destinationItems[index].coinTag,
                    coinMarketCap: destinationItems[index].coinMarketCap,
                    coinGraphic: destinationItems[index].coinGraphic,
                    coinPrice: destinationItems[index].coinPrice,
                    coinRateOfChange: destinationItems[index].coinRateOfChange,
                    coinIsRise: destinationItems[index].coinIsRise,
                    screnSize: screnSize,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
