import 'package:anju/interface/widgets/anju_item_list_viewer.dart';
import 'package:flutter/material.dart';
// utils
// models
import 'package:anju/data/models/orders.dart';
// widgets
import 'package:anju/interface/widgets/ordercard.dart';
// packages
import 'package:auto_route/auto_route.dart';

// TODO: REMOVE
List<Order> orders = List.generate(40, (index) => Order.unique());

@RoutePage()

/// Muestra los pedidos pendiente
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnjuItemListViewer<Order>(
      list: orders,
      childBuilder: (order) => OrderCard(order: order),
      title: 'Pedidos',
    );
  }
}
