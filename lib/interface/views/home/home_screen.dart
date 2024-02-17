import 'package:flutter/material.dart';
// utils
// models
import 'package:anju/data/models/orders.dart';
// widgets
import 'package:anju/interface/widgets/ordercard.dart';
// packages
import 'package:auto_route/auto_route.dart';

List<Order> orders = List.generate(40, (index) => Order.unique());

@RoutePage()

/// Muestra los pedidos pendiente
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return OrderCard(
          order: orders[index],
        );
      },
    );
  }
}
