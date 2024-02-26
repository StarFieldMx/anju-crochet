import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/bill.dart';
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
  final bills = [
    Expenses(
      money: 200,
      title: 'Pedido Mario',
      subtitle: 'Corazones y borregos',
      date: DateTime(2024, 2, 26),
    ),
    Expenses(
      money: 150,
      title: 'Factura eléctrica',
      subtitle: 'Energía consumida',
      date: DateTime(2024, 2, 21),
    ),
    Expenses(
      money: 100,
      title: 'Compra supermercado',
      subtitle: 'Productos de primera necesidad',
      date: DateTime(2024, 2, 18),
    ),
    Expenses(
      money: 50,
      title: 'Transporte público',
      subtitle: 'Viaje en metro',
      date: DateTime(2024, 2, 14),
    ),
    Expenses(
      money: 300,
      title: 'Alquiler de local',
      subtitle: 'Pago mensual del alquiler',
      date: DateTime(2024, 2, 10),
    ),
    Income(
      money: 1000,
      title: 'Salario',
      subtitle: 'Pago mensual',
      date: DateTime(2024, 2, 28),
    ),
    Income(
      money: 300,
      title: 'Ingreso extra',
      subtitle: 'Trabajo adicional',
      date: DateTime(2024, 2, 25),
    ),
    Income(
      money: 500,
      title: 'Reembolso de impuestos',
      subtitle: 'Devolución de impuestos',
      date: DateTime(2024, 2, 20),
    ),
    Income(
      money: 200,
      title: 'Venta de muebles',
      subtitle: 'Ingresos adicionales',
      date: DateTime(2024, 2, 16),
    ),
    Income(
      money: 800,
      title: 'Bonificación',
      subtitle: 'Premio por desempeño',
      date: DateTime(2024, 2, 5),
    ),
  ];

  BillType type = BillType.balance;

  @override
  Widget build(BuildContext context) {
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
                    type = BillType.balance;
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
                      if (type == BillType.balance)
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
                    type = BillType.stats;
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
                      if (type == BillType.stats)
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
            const SizedBox(height: 30),
            // TODO: Cambiar según si es Balance o Stats
            if (type == BillType.balance)
              ...bills.billsByDate.map(
                (e) => BillisByDate(
                  bills: e,
                ),
              ),
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
    final firstDate = bills.first.date;
    return bills.every((bill) => bill.date == firstDate);
  }

  @override
  Widget build(BuildContext context) {
    assert(_checkAllBillsHaveSameDate(), 'All bills must have the same date');
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
                  '${bills.first.date.day}',
                  style: AnjuTextStyles.walletCards,
                ),
                const SizedBox(width: 10),
                Text(
                  bills.first.date.weekdayAbbreviation,
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
                style: bill is Income
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
