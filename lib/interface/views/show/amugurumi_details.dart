import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/config/utils/images_constant.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/interface/widgets/anju_carousel.dart';
import 'package:anju/interface/widgets/anju_topbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AmigurumiDetailsScreen extends StatelessWidget {
  const AmigurumiDetailsScreen({super.key, required this.amigurumi});
  final Amigurumi amigurumi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AnjuTopBar(),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          AnjuCarousel(
            images: AnjuImages.values,
          ),
          const SizedBox(height: 20),
          Text('Handmade', style: AnjuTextStyles.handmade),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  amigurumi.name,
                  style: AnjuTextStyles.amigurumiName,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text('\$ ${amigurumi.price} MXN', style: AnjuTextStyles.priceTag)
        ],
      )),
    );
  }
}
