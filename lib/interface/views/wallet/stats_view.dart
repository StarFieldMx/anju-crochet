import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/bill.dart';
import 'package:anju/interface/views/wallet/widget/stats_graph_circular.dart';
import 'package:flutter/material.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key, required this.allBills});
  final List<Bill> allBills;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StatsGraphCircular(
          data: allBills.incomeAndExpense,
          nameChart: 'Ingresos & Egresos',
          graphType: GraphTyp.doughnut,
          isChartTitle: true,
        ),
        StatsGraphCircular(
          data: allBills.incomes,
          nameChart: 'Ingresos',
          graphType: GraphTyp.doughnut,
        ),
        StatsGraphCircular(
          data: allBills.expenses,
          nameChart: 'Egresos',
          graphType: GraphTyp.doughnut,
        ),
      ],
    );
  }
}
