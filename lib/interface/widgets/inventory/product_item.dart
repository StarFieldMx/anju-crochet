import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/config/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: 100, width: 100, child: Card(color: '#E9E5D9'.toColor())),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hueso',
              style: AnjuTextStyles.itemTitle,
            ),
            Text('HEX: E9E5D9', style: AnjuTextStyles.subtitleCard),
            Text('2-3 mm', style: AnjuTextStyles.info),
          ],
        ),
        const Spacer(),
        Icon(
          CupertinoIcons.chevron_right,
          color: AnjuColors.primary,
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
