import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/constants/colors.dart';

Widget riseLine() {
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
              FlSpot(0, 25),
              FlSpot(1, 23),
              FlSpot(2, 21),
              FlSpot(3, 19),
              FlSpot(4, 21),
              FlSpot(5, 23),
              FlSpot(6, 25),
              FlSpot(7, 26),
              FlSpot(8, 8),
              FlSpot(9, 1),
              FlSpot(10, 11),
              FlSpot(11, 25),
              FlSpot(12, 3),
              FlSpot(13, 4),
              FlSpot(14, 25),
              FlSpot(15, 24),
              FlSpot(16, 18),
              FlSpot(17, 2),
              FlSpot(18, 23),
              FlSpot(19, 11),
              FlSpot(20, 15),
              FlSpot(21, 18),
              FlSpot(22, 7),
              FlSpot(23, 16),
              FlSpot(24, 7),
              FlSpot(25, 7),
              FlSpot(26, 7),
              FlSpot(27, 7),
              FlSpot(28, 7),
              FlSpot(29, 7),
              FlSpot(30, 7),
            ],
            color: riseColor,
            isCurved: true,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
          ),
        ],
      ),
    ),
  );
}
