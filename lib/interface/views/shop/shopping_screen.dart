import 'package:anju/data/models/yarn.dart';
import 'package:anju/interface/widgets/anju_color_circle.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// Muestra muñequitos que maneja
class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Shopping screen'),
          // TODO: THIS IS FOR DETAIL VIEW SHOPING TIME!
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                8,
                (index) {
                  final llavero = Yarn.llavero(id: index);
                  return AnjuColorCircle(
                    colors: [llavero.color],
                    name: llavero.name,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
