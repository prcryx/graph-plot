import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graph_plot/common/constants/dimen.dart';
import 'package:graph_plot/common/utils/array_max.dart';

class Histogram extends StatelessWidget {
  final List<double> values;
  final String? leftTitles;
  final String? bottomTitle;

  const Histogram(
    this.values, {
    this.leftTitles,
    this.bottomTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: BarChart(
        BarChartData(
          titlesData: FlTitlesData(
            show: true,
            leftTitles: leftTitles != null
                ? AxisTitles(axisNameWidget: Text(leftTitles!))
                : null,
            bottomTitles: bottomTitle != null
                ? AxisTitles(axisNameWidget: Text(bottomTitle!))
                : null,
          ),
          borderData: FlBorderData(
              show: true,
              border: Border.all(color: Theme.of(context).colorScheme.surface)),
          gridData: FlGridData(
            show: false,
          ),
          barGroups: values
              .map(
                (value) => BarChartGroupData(
                  x: values.indexOf(value),
                  groupVertically: true,
                  barRods: [
                    BarChartRodData(
                      toY: value.toDouble(),
                      width: LayoutDimension.dimen_24,
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.zero,
                      backDrawRodData: BackgroundBarChartRodData(
                        toY: values.maxNumber.toDouble(),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
