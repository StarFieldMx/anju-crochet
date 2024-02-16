import 'package:anju/config/router/anju_router.gr.dart';
import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/utils/utils.dart';
import 'package:anju/interface/widgets/animated_anju_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
        HomeRoute(),
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
          appBar: AppBar(
            backgroundColor: AnjuColor.primary,
            title: Image.asset(AnjuImages.logo, height: 64),
            centerTitle: true,
          ),
          body: child,
          bottomNavigationBar: const AnimatedAnjuBar(),
        );
      },
    );
  }
}
