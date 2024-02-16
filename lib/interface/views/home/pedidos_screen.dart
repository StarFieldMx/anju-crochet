import 'package:anju/config/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PedidosScreen extends StatelessWidget {
  const PedidosScreen({super.key, required this.heroId});
  final int heroId;
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
                  tag: HeroTag.ordersItem(heroId),
                  child: Image.asset(AnjuImages.borrego, fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
