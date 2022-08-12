import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


// 今は仮のデータ
// 追加していくデータベースがいる

class Database extends StatelessWidget {
  Widget build(BuildContext context){
    return LineChart(
      LineChartData(
        minX: 0,
        //x軸最小値
        maxX: 100,
        //x軸最大値
        minY: 0,
        //y軸最小値
        maxY: 100,
        //y軸最大値
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 6),
              FlSpot(1, 6),
              FlSpot(2, 9),
              FlSpot(3, 15),
              FlSpot(4, 19),
              FlSpot(5, 22),
              FlSpot(6, 26),
              FlSpot(7, 27),
              FlSpot(8, 24),
              FlSpot(9, 18),
              FlSpot(10, 13),
              FlSpot(11, 15),
            ],
          ),
        ],
      ),
    );
  }

}