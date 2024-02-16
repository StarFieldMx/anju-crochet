import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()

/// Para hacer cuentas
class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Wallet'),
    );
  }
}
