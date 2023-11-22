import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/constants/colors.dart';

class CoinInfoContainer extends StatelessWidget {
  const CoinInfoContainer({
    required this.screnSize,
    required this.coinName,
    required this.coinTag,
    required this.coinMarketCap,
    required this.coinPrice,
    required this.coinRateOfChange,
    required this.coinIsStar,
    required this.coinGraphic,
    required this.coinIsRise,
  });

  final Size screnSize;
  final String coinName;
  final String coinTag;
  final String coinMarketCap;
  final String coinPrice;
  final String coinRateOfChange;
  final Widget coinGraphic;
  final bool coinIsStar;
  final bool coinIsRise;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bgColor,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                coinIsStar
                    ? 'assets/icons/selected_star.svg'
                    : 'assets/icons/unselected_star.svg',
                color: coinIsStar ? textColor : secondTextColor,
                height: 15,
              ),
              SizedBox(width: 20),
              Container(
                width: screnSize.width * .35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          ('${coinName}'),
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ('/TL'),
                          style: TextStyle(
                            color: secondTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      ('${coinMarketCap} ${coinTag}'),
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              coinGraphic,
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        ('${coinPrice}'),
                        style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ('TL'),
                        style: TextStyle(
                          color: secondTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        ('${coinRateOfChange}%'),
                        style: TextStyle(
                          color: coinIsRise ? riseColor : declineColor,
                          fontSize: 13,
                        ),
                      ),
                      SvgPicture.asset(
                        coinIsRise
                            ? 'assets/icons/arrow_up.svg'
                            : 'assets/icons/arrow_down.svg',
                        color: coinIsRise ? riseColor : declineColor,
                        height: 25,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 35.0),
            child: Divider(
              color: secondTextColor.withOpacity(.3),
            ),
          ),
        ],
      ),
    );
  }
}
