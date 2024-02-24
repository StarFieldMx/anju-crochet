import 'package:anju/interface/widgets/anju_topbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AmigurumiDetails extends StatelessWidget {
  const AmigurumiDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AnjuTopBar(),
      body: SingleChildScrollView(),
    );
  }
}
