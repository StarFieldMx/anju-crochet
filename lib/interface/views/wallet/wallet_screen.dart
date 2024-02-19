import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()

/// Para hacer cuentas
class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Wallet screen', style: AnjuTextStyles.titleScreens),
    );
  }
}
