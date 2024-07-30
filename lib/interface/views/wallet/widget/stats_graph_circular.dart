import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/config/utils/extensions.dart';
import 'package:anju/data/models/bill.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

enum GraphTyp { pie, doughnut }

class StatsGraphCircular extends StatefulWidget {
  const StatsGraphCircular({
    super.key,
    required this.data,
    required this.nameChart,
    required this.graphType,
    this.isChartTitle = false,
  });
  final List<Bill> data;
  final String nameChart;
  final GraphTyp graphType;
  final bool isChartTitle;
  @override
  State<StatsGraphCircular> createState() => _StatsGraphCircularState();
}

class _StatsGraphCircularState extends State<StatsGraphCircular> {
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    // QUE SE MUESTRE EL DINERO EN EL TOOLTIP
    _tooltip = TooltipBehavior(
      enable: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      tooltipBehavior: _tooltip,
      annotations: [
        if (!widget.isChartTitle)
          CircularChartAnnotation(
            widget: Text(widget.nameChart,
                style: AnjuTextStyles.defaultStyle
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
      ],
      legend: const Legend(
        isVisible: true,
        overflowMode: LegendItemOverflowMode.scroll,
        isResponsive: true,
        position: LegendPosition.bottom,
      ),
      title: widget.isChartTitle
          ? ChartTitle(
              text: widget.nameChart,
              textStyle: AnjuTextStyles.defaultStyle
                  .copyWith(fontWeight: FontWeight.bold))
          : const ChartTitle(),
      series: <CircularSeries<Bill, String>>[
        widget.graphType == GraphTyp.doughnut
            ? DoughnutSeries<Bill, String>(
                dataSource: widget.data,
                xValueMapper: (Bill data, _) => data.title,
                yValueMapper: (Bill data, _) => data.money,
                dataLabelMapper: getLabelPercent,
                name: widget.nameChart,
                dataLabelSettings: dataLabelStyle,
              )
            : PieSeries<Bill, String>(
                dataSource: widget.data,
                xValueMapper: (Bill data, _) => data.title,
                yValueMapper: (Bill data, _) => data.money,
                dataLabelMapper: getLabelPercent,
                name: widget.nameChart,
                dataLabelSettings: dataLabelStyle,
              )
      ],
    );
  }

  String getLabelPercent(Bill data, int _) {
    if (widget.data.length == 2) {
      return '${((100 * data.money) / widget.data.totalBill).toStringAsFixed(2)}%';
    }
    if (data.type == BillingType.expenses) {
      return '${((100 * data.money) / widget.data.totalExpenses).toStringAsFixed(2)}%';
    }
    return '${((100 * data.money) / widget.data.totalIncome).toStringAsFixed(2)}%';
  }

  DataLabelSettings get dataLabelStyle {
    return DataLabelSettings(
        isVisible: true,
        textStyle: AnjuTextStyles.cinna.copyWith(color: Colors.white));
  }
}
