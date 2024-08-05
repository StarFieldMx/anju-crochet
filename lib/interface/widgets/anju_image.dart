import 'package:flutter/material.dart';
import 'package:anju/data/models/anju_image_model.dart';
// utils

enum ImageBorderType { orders, details, inventory }

class AnjuImage extends StatelessWidget {
  const AnjuImage({
    super.key,
    this.tag,
    required this.imageUrl,
    this.height,
    this.width,
    this.type = ImageBorderType.orders,
    this.hero = false,
    this.source = ImageSource.local,
  }) : assert(hero ? tag != null : tag == null);
  final bool hero;
  // final int id;
  final String? tag;
  final String imageUrl;
  final ImageBorderType type;
  final ImageSource source;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return hero
        ? Hero(
            tag: tag!,
            child: ClipRRect(borderRadius: _getBorder, child: _imageBasedType),
          )
        : ClipRRect(borderRadius: _getBorder, child: _imageBasedType);
  }

  static Radius get _radius => const Radius.circular(12);

  BorderRadiusGeometry get _getBorder {
    switch (type) {
      case ImageBorderType.orders:
        return BorderRadius.all(_radius);
      case ImageBorderType.details:
        return BorderRadius.only(topRight: _radius, topLeft: _radius);
      case ImageBorderType.inventory:
        return BorderRadius.only(topRight: _radius, bottomRight: _radius);
    }
  }

  Image get _imageBasedType {
    return source == ImageSource.local
        ? Image.asset(
            imageUrl,
            height: height,
            width: width,
            fit: BoxFit.cover,
          )
        : Image.network(
            imageUrl,
            height: height,
            width: width,
            fit: BoxFit.cover,
          );
  }
}
