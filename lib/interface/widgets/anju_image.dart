import 'package:flutter/material.dart';
// utils
import 'package:anju/config/utils/hero_tags.dart';

enum ImageType { orders, details }

// TODO: UPDATE TO TO NETWORK IMAGE
class AnjuImage extends StatelessWidget {
  const AnjuImage({
    super.key,
    this.id = 0,
    required this.imagePath,
    this.height,
    this.width,
    this.type = ImageType.orders,
    this.hero = true,
  }) : assert(hero ? id > 0 : id == 0);
  final bool hero;
  final int id;
  final String imagePath;
  final ImageType type;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return hero
        ? Hero(
            tag: HeroTag.ordersItem(id),
            child: ClipRRect(
                borderRadius: _getBorder,
                child: Image.asset(
                  imagePath,
                  height: height,
                  width: width,
                  fit: BoxFit.cover,
                )),
          )
        : ClipRRect(
            borderRadius: _getBorder,
            child: Image.asset(
              imagePath,
              height: height,
              width: width,
              fit: BoxFit.cover,
            ));
  }

  static Radius get _radius => const Radius.circular(12);

  BorderRadiusGeometry get _getBorder {
    switch (type) {
      case ImageType.orders:
        return BorderRadius.all(_radius);
      case ImageType.details:
        return BorderRadius.only(topRight: _radius, topLeft: _radius);
    }
  }
}
