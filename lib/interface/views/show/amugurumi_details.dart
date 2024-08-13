import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/config/utils/images_constant.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/interface/widgets/anju_carousel.dart';
import 'package:anju/interface/widgets/anju_topbar.dart';
import 'package:anju/interface/widgets/multi_color_circle.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
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
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            AnjuCarousel(
              images: AnjuImages.values.toList(),
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
            const SizedBox(height: 30),
            // TODO: ADD TOTAL PRICE
            // Text('\$ ${amigurumi.price} MXN', style: AnjuTextStyles.priceTag),
            Text('\$ 200 MXN', style: AnjuTextStyles.priceTag),
            const SizedBox(height: 30),
            Text(
              'Colors',
              style: AnjuTextStyles.mediumTitle,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 15),
            if (amigurumi.type != AmigurumiType.normal)
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 100),
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MultiColorCircle(
                        colors: [
                          Colors.amber,
                          Colors.brown,
                          Colors.white,
                        ],
                        isSelected: true,
                      ),
                    );
                  },
                ),
              ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: CupertinoButton(
                    color: AnjuColors.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: const Text('Agregar a pedido'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
