import 'package:anju/interface/widgets/anju_topbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class YarnLayout extends StatelessWidget {
  const YarnLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: AnjuTopBar(), body: AutoRouter());
  }
}
