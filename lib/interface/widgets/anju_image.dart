import 'package:flutter/material.dart';
// utils
import 'package:anju/config/utils/hero_tags.dart';

class AnjuImage extends StatelessWidget {
  const AnjuImage({
    super.key,
    required this.id,
    required this.imagePath,
    this.height,
  });

  final int id;
  final String imagePath;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: HeroTag.ordersItem(id),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Image.asset(imagePath, height: height)),
    );
  }
}
