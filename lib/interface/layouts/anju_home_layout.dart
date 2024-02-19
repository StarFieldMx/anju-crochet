import 'package:anju/config/router/anju_router.gr.dart';
import 'package:anju/interface/widgets/animated_anju_bar.dart';
import 'package:anju/interface/widgets/anju_topbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

enum AnjuRoutes {
  shopping,
  pdfpatrons,
  orders,
  inventory,
  wallet,
}

@RoutePage()
class AnjuHomeLayout extends StatelessWidget {
  const AnjuHomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      navigatorObservers: () => [HeroController()],
      routes: const [
        ShoppingRoute(),
        PdfPatrons(),
        OrdersRoute(),
        InventoryRoute(),
        WalletRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0), // Derecha
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      builder: (context, child) {
        return Scaffold(
          extendBody: true,
          appBar: const AnjuTopBar(isMainRoute: true),
          body: child,
          backgroundColor: Colors.white,
          bottomNavigationBar: const AnimatedAnjuBar(),
        );
      },
    );
  }
}
