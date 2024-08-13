import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/bill.dart';
import 'package:anju/interface/views/wallet/stats_view.dart';
import 'package:anju/interface/views/wallet/widget/bill_date_picker.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()

/// Para hacer cuentas
class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  final List<Bill> bills = [
    Bill()
      ..money = 200
      ..title = 'Pedido Mario'
      ..subtitle = 'Corazones y borregos'
      ..dueAt = DateTime(2024, 2, 26)
      ..type = BillingType.expenses,
    Bill()
      ..money = 150
      ..title = 'Factura eléctrica'
      ..subtitle = 'Energía consumida'
      ..dueAt = DateTime(2024, 2, 21)
      ..type = BillingType.expenses,
    Bill()
      ..money = 100
      ..title = 'Compra supermercado'
      ..subtitle = 'Productos de primera necesidad'
      ..dueAt = DateTime(2024, 2, 18)
      ..type = BillingType.expenses,
    Bill()
      ..money = 50
      ..title = 'Transporte público'
      ..subtitle = 'Viaje en metro'
      ..dueAt = DateTime(2024, 2, 14)
      ..type = BillingType.expenses,
    Bill()
      ..money = 300
      ..title = 'Alquiler de local'
      ..subtitle = 'Pago mensual del alquiler'
      ..dueAt = DateTime(2024, 2, 10)
      ..type = BillingType.expenses,
    Bill()
      ..money = 300
      ..title = 'Hilo sinfonía'
      ..subtitle = 'Compre hilo'
      ..dueAt = DateTime(2024, 2, 10)
      ..type = BillingType.expenses,
    Bill()
      ..money = 1000
      ..title = 'Salario'
      ..subtitle = 'Pago mensual'
      ..dueAt = DateTime(2024, 2, 10)
      ..type = BillingType.incomes,
    Bill()
      ..money = 300
      ..title = 'Ingreso extra'
      ..subtitle = 'Trabajo adicional'
      ..dueAt = DateTime(2024, 2, 25)
      ..type = BillingType.incomes,
    Bill()
      ..money = 500
      ..title = 'Reembolso de impuestos'
      ..subtitle = 'Devolución de impuestos'
      ..dueAt = DateTime(2024, 2, 20)
      ..type = BillingType.incomes,
    Bill()
      ..money = 200
      ..title = 'Venta de muebles'
      ..subtitle = 'Ingresos adicionales'
      ..dueAt = DateTime(2024, 2, 16)
      ..type = BillingType.incomes,
    Bill()
      ..money = 800
      ..title = 'Bonificación'
      ..subtitle = 'Premio por desempeño'
      ..dueAt = DateTime(2024, 2, 5)
      ..type = BillingType.incomes,
    Bill()
      ..money = 500
      ..title = 'Crochet'
      ..subtitle = 'Premio por crochet'
      ..dueAt = DateTime(2024, 2, 6)
      ..type = BillingType.incomes,
  ];

  BillTypeScreen type = BillTypeScreen.balance;

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Cuentas',
              style: AnjuTextStyles.titleScreens,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    type = BillTypeScreen.balance;
                  }),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        AnjuSvg.balance,
                        width: 30,
                      ),
                      Text(
                        'Balance',
                        style: AnjuTextStyles.defaultStyle,
                      ),
                      if (type == BillTypeScreen.balance)
                        SizedBox(
                          width: 80,
                          child: Divider(
                            thickness: 4,
                            color: AnjuColors.secondary,
                          ),
                        ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    type = BillTypeScreen.stats;
                  }),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        AnjuSvg.stats,
                        width: 40,
                      ),
                      Text(
                        'Estadistica',
                        style: AnjuTextStyles.defaultStyle,
                      ),
                      if (type == BillTypeScreen.stats)
                        SizedBox(
                          width: 80,
                          child: Divider(
                            thickness: 4,
                            color: AnjuColors.secondary,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            BillDatePicker(
              pickDate: (time, range) {},
            ),
            const SizedBox(height: 15),
            if (type == BillTypeScreen.balance)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text('Ingresos'),
                      Text('\$${bills.totalIncome}',
                          style: AnjuTextStyles.income),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Egresos'),
                      Text('\$${bills.totalExpenses}',
                          style: AnjuTextStyles.expenses),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('balance'),
                      Text('\$${bills.balance}',
                          style: AnjuTextStyles.income
                              .copyWith(color: Colors.black)),
                    ],
                  ),
                ],
              ),
            const SizedBox(height: 15),

            // TODO: Cambiar según si es Balance o Stats
            if (type == BillTypeScreen.balance)
              ...bills.billsByDate.map(
                (e) => BillisByDate(
                  bills: e,
                ),
              ),
            if (type == BillTypeScreen.stats) StatsView(allBills: bills),
            const SizedBox(height: 80.0),
          ],
        ),
      ),
    );
  }
}

class BillisByDate extends StatelessWidget {
  const BillisByDate({
    super.key,
    required this.bills,
  });
  final List<Bill> bills;

  bool _checkAllBillsHaveSameDate() {
    if (bills.isEmpty) return true;
    final firstDate = bills.first.dueAt;
    return bills.every((bill) => bill.dueAt == firstDate);
  }

  @override
  Widget build(BuildContext context) {
    assert(_checkAllBillsHaveSameDate(), 'All bills must have the same dueAt');
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 15, right: 25),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Text(
                  '${bills.first.dueAt.day}',
                  style: AnjuTextStyles.walletCards,
                ),
                const SizedBox(width: 10),
                Text(
                  bills.first.dueAt.weekdayAbbreviation,
                  style: AnjuTextStyles.defaultStyle
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Text(
                  '\$${bills.totalIncome}',
                  style: AnjuTextStyles.income,
                ),
                const SizedBox(width: 10),
                Text(
                  '\$${bills.totalExpenses}',
                  style: AnjuTextStyles.expenses,
                ),
              ],
            ),
          ),
          ...bills.map(
            (bill) => ListTile(
              leading: const Text('2'),
              title: Text(
                bill.title,
                style: AnjuTextStyles.pedido,
              ),
              subtitle: Text(
                bill.title,
                style: AnjuTextStyles.descriptionPedido,
              ),
              trailing: Text(
                '\$${bill.money}',
                style: bill.type == BillingType.incomes
                    ? AnjuTextStyles.income
                    : AnjuTextStyles.expenses,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
