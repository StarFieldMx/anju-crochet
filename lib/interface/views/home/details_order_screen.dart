import 'package:flutter/material.dart';
// Utils
import 'package:anju/config/utils/utils.dart';
// Models
import 'package:anju/data/models/orders.dart';
// Packages
import 'package:auto_route/auto_route.dart';

// TODO: IMPLEMENT UI
@RoutePage()
class DetailsOrderScreen extends StatelessWidget {
  const DetailsOrderScreen({super.key, required this.order});
  final Orders order;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: 450,
              child: Hero(
                  tag: HeroTag.ordersItem(order.id),
                  child: Image.asset(AnjuImages.test, fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
