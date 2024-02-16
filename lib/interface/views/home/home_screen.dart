import 'package:anju/config/router/anju_router.gr.dart';
import 'package:anju/config/utils/utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()

/// Muestra los pedidos pendiente
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => AutoRouter.of(context).push(PedidosRoute(id: index)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Hero(
                    tag: HeroTag.ordersItem(index),
                    child: Image.asset(AnjuImages.borrego)),
                const Column(
                  children: [
                    Text('Due date: 20 de enero del 2024'),
                    Text('Es un borrego muy bonito de color...'),
                    Text('Fulanito Perez'),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
