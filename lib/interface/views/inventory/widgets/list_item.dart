import 'package:anju/data/models/anju_image_model.dart';
import 'package:anju/interface/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ListItemInventory extends StatelessWidget {
  const ListItemInventory({
    super.key,
    required this.title,
    this.subtitle,
    required this.source,
    required this.imageUrl,
  });
  final String title;
  final String? subtitle;
  final ImageSource source;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          margin: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: AnjuImage(
            imageUrl: imageUrl,
            width: _size(context).width * 0.35,
            height: _size(context).height * 0.105,
            source: source,
            type: ImageBorderType.inventory,
            // hero: true,
            // tag: title,
            // fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.start,
              ),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 131, 131, 131)),
                  textAlign: TextAlign.start,
                ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 30,
          ),
        ),
      ],
    );
  }

  Size _size(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
