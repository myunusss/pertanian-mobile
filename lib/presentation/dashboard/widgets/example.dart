import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => _ChartPageState();
}

List<ChartData> chartData = [];

class _ChartPageState extends State<ChartPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    chartData = getData();
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: SfCartesianChart(
            primaryXAxis: DateTimeAxis(
                intervalType: DateTimeIntervalType.days,
                visibleMinimum: chartData[chartData.length - 29].x,
                visibleMaximum: chartData[chartData.length - 1].x),
            zoomPanBehavior: ZoomPanBehavior(
              enablePanning: true,
            ),
            series: <CartesianSeries<ChartData, DateTime>>[
              ColumnSeries(
                dataSource: chartData,
                xValueMapper: (ChartData tendencias, _) => tendencias.x,
                yValueMapper: (ChartData tendencias, _) => tendencias.y,
              )
            ],
          ),
        ));
  }
}

dynamic getData() {
  List<ChartData> data = [];
  for (int i = 1; i < 50; i++) {
    data.add(ChartData(DateTime(2018, 1, i), getRandomInt(10, 100).toInt()));
  }
  return data;
}

num getRandomInt(int min, int max) {
  final Random random = Random();
  return min + random.nextInt(max - min);
}

class ChartData {
  ChartData(this.x, this.y);
  final DateTime x;
  final int y;
}
