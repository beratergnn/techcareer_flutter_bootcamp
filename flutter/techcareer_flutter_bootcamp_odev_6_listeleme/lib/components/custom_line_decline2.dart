import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/constants/colors.dart';

Widget declineLine2() {
  return SizedBox(
    height: 40,
    width: 80,
    child: LineChart(
      LineChartData(
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: false),
        borderData: FlBorderData(
          show: false,
        ),
        minX: 0,
        maxX: 30,
        minY: 0,
        maxY: 30,
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 15),
              FlSpot(1, 22),
              FlSpot(2, 3),
              FlSpot(3, 5),
              FlSpot(4, 24),
              FlSpot(5, 11),
              FlSpot(6, 3),
              FlSpot(7, 19),
              FlSpot(8, 26),
              FlSpot(9, 15),
              FlSpot(10, 11),
              FlSpot(11, 8),
              FlSpot(12, 2),
              FlSpot(13, 4),
              FlSpot(14, 10),
              FlSpot(15, 26),
              FlSpot(16, 10),
              FlSpot(17, 18),
              FlSpot(18, 10),
              FlSpot(19, 8),
              FlSpot(20, 6),
              FlSpot(21, 44),
              FlSpot(22, 7),
              FlSpot(23, 3),
              FlSpot(24, 2),
              FlSpot(25, 3),
              FlSpot(26, 7),
              FlSpot(27, 2),
              FlSpot(28, 6),
              FlSpot(29, 8),
              FlSpot(30, 5),
            ],
            color: declineColor,
            isCurved: true,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
          ),
        ],
      ),
    ),
  );
}
