import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'Database.dart';

// 最近10個のデータを表示
// 今までのを表示
// 1ヶ月とかできたらいい.それが切り替わるボタンがいる
// 戻るボタン

class DrawGraph extends StatefulWidget {
  @override
  _DrawGraphState createState() => _DrawGraphState();
}

class _DrawGraphState extends State<DrawGraph> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graph'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Database(),
          ),
        ),
      ),
    );
  }
}