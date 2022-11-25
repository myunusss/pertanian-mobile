import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatelessWidget {
  final List<ChartItemData> items;

  const PieChart({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      legend: Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        overflowMode: LegendItemOverflowMode.wrap,
        orientation: LegendItemOrientation.vertical,
        height: '50%',
        width: '100%',
        alignment: ChartAlignment.near,
        legendItemBuilder: (String name, dynamic series, dynamic point, int index) {
          return Container(
            margin: const EdgeInsets.only(right: 24, bottom: 12),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  color: items[index].color,
                  size: 12,
                ),
                const SizedBox(width: 4),
                SizedBox(
                  width: 100,
                  child: Text(name),
                ),
                const SizedBox(width: 8),
                Text('${items[index].value}'),
              ],
            ),
          );
        },
      ),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <CircularSeries>[
        // Render pie chart
        PieSeries<ChartItemData, String>(
          dataSource: items,
          pointColorMapper: (ChartItemData data, _) => data.color,
          xValueMapper: (ChartItemData data, _) => data.name,
          yValueMapper: (ChartItemData data, _) => data.value,
          strokeWidth: 2,
          strokeColor: Colors.white,
          radius: '100%',
          emptyPointSettings: EmptyPointSettings(mode: EmptyPointMode.zero),
        )
      ],
    );
  }
}

class ChartItemData {
  ChartItemData(
    this.name,
    this.value,
    this.color,
  );

  final String name;
  final int? value;
  final Color color;
}
