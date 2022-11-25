import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ColumnChart extends StatelessWidget {
  final List<ColumnChartData> items;
  final int max;

  const ColumnChart({
    Key? key,
    required this.items,
    required this.max,
  }) : super(key: key);

  Color _getColor(int index) {
    switch (index) {
      case 0:
        return const Color(0XFF02A0FC);
      case 1:
        return const Color(0XFF34B53A);
      case 2:
        return const Color(0XFFF4AE1A);
      default:
        return const Color(0XFFF4AE1A);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      legend: Legend(
        isVisible: true,
        position: LegendPosition.top,
        overflowMode: LegendItemOverflowMode.wrap,
        orientation: LegendItemOrientation.vertical,
        width: '100%',
        alignment: ChartAlignment.near,
        legendItemBuilder: (String name, dynamic series, dynamic point, int index) {
          return Container(
            margin: const EdgeInsets.only(right: 24, bottom: 12),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  color: _getColor(index),
                  size: 12,
                ),
                const SizedBox(width: 4),
                Text(name),
              ],
            ),
          );
        },
      ),
      zoomPanBehavior: ZoomPanBehavior(
        enablePanning: true,
      ),
      primaryXAxis: CategoryAxis(
        visibleMaximum: max > 0 ? 4 : null,
        maximumLabels: max > 0 ? 10 : null,
        autoScrollingMode: AutoScrollingMode.start,
        axisLine: const AxisLine(width: 0),
        majorGridLines: const MajorGridLines(width: 0),
        majorTickLines: const MajorTickLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
        maximum: max > 0 ? max.toDouble() : null,
        interval: 10000,
        rangePadding: ChartRangePadding.round,
        axisLine: const AxisLine(width: 0),
        majorGridLines: const MajorGridLines(width: 0),
        majorTickLines: const MajorTickLines(width: 0),
        numberFormat: NumberFormat.currency(
          locale: 'id_ID',
          symbol: "",
          decimalDigits: 0,
        ),
      ),
      series: <ChartSeries<ColumnChartData, String>>[
        ColumnSeries<ColumnChartData, String>(
          dataSource: items,
          xValueMapper: (ColumnChartData data, _) => data.x,
          yValueMapper: (ColumnChartData data, _) => data.y,
          name: 'Harga Produsen',
          color: const Color(0XFF02A0FC),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          spacing: 0.1,
        ),
        ColumnSeries<ColumnChartData, String>(
          dataSource: items,
          xValueMapper: (ColumnChartData data, _) => data.x,
          yValueMapper: (ColumnChartData data, _) => data.y1,
          name: 'Harga Grosir',
          color: const Color(0XFF34B53A),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          spacing: 0.1,
        ),
        ColumnSeries<ColumnChartData, String>(
          dataSource: items,
          xValueMapper: (ColumnChartData data, _) => data.x,
          yValueMapper: (ColumnChartData data, _) => data.y2,
          name: 'Harga Eceran',
          color: const Color(0XFFF4AE1A),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          spacing: 0.1,
        ),
      ],
    );
  }
}

class ColumnChartData {
  ColumnChartData(
    this.x,
    this.y,
    this.y1,
    this.y2,
  );

  final String x;
  final int? y;
  final int? y1;
  final int? y2;
}
