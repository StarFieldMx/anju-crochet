import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// Muestra muñequitos que maneja
class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text('Shopping screen'),
          // TODO: THIS IS FOR DETAIL VIEW SHOPING TIME!
        ],
      ),
    );
  }
}
