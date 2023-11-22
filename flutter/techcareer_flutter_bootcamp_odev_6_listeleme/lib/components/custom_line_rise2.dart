import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/constants/colors.dart';

Widget riseLine2() {
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
              FlSpot(0, 3),
              FlSpot(1, 8),
              FlSpot(2, 6),
              FlSpot(3, 4),
              FlSpot(4, 9),
              FlSpot(5, 4),
              FlSpot(6, 11),
              FlSpot(7, 21),
              FlSpot(8, 13),
              FlSpot(9, 14),
              FlSpot(10, 11),
              FlSpot(11, 12),
              FlSpot(12, 9),
              FlSpot(13, 12),
              FlSpot(14, 13),
              FlSpot(15, 12),
              FlSpot(16, 15),
              FlSpot(17, 14),
              FlSpot(18, 18),
              FlSpot(19, 17),
              FlSpot(20, 22),
              FlSpot(21, 20),
              FlSpot(22, 25),
              FlSpot(23, 26),
              FlSpot(24, 22),
              FlSpot(25, 28),
              FlSpot(26, 30),
              FlSpot(27, 28),
              FlSpot(28, 25),
              FlSpot(29, 30),
              FlSpot(30, 30),
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
