import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/constants/colors.dart';

Widget declineLine() {
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
              FlSpot(0, 30),
              FlSpot(1, 25),
              FlSpot(2, 20),
              FlSpot(3, 22),
              FlSpot(4, 18),
              FlSpot(5, 16),
              FlSpot(6, 13),
              FlSpot(7, 15),
              FlSpot(8, 16),
              FlSpot(9, 15),
              FlSpot(10, 11),
              FlSpot(11, 8),
              FlSpot(12, 2),
              FlSpot(13, 4),
              FlSpot(14, 10),
              FlSpot(15, 11),
              FlSpot(16, 10),
              FlSpot(17, 12),
              FlSpot(18, 10),
              FlSpot(19, 8),
              FlSpot(20, 6),
              FlSpot(21, 4),
              FlSpot(22, 7),
              FlSpot(23, 3),
              FlSpot(24, 2),
              FlSpot(25, 3),
              FlSpot(26, 2),
              FlSpot(27, 2),
              FlSpot(28, 1),
              FlSpot(29, 1),
              FlSpot(30, 1),
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
