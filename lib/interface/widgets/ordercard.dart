import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/orders.dart';
import 'package:flutter/material.dart';
// ROUTER
import 'package:anju/config/router/anju_router.gr.dart';
import 'package:auto_route/auto_route.dart';
// WIDGETS
import 'package:anju/interface/widgets/anju_image.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.order,
  });
  final Order order;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final cardHeight = size.height * 0.125;
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(const DetailsOrderRoute()),
      child: Container(
        constraints: BoxConstraints(maxHeight: cardHeight),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnjuImage(id: order.id, imagePath: AnjuImages.test),
            const SizedBox(width: 20),
            Expanded(
              child: SizedBox(
                height: cardHeight * 0.85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Due: ${order.dueDate}',
                      style: AnjuTextStyles.date,
                    ),
                    const SizedBox(height: 5),
                    if (order.details != null)
                      Text(
                        order.details!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AnjuTextStyles.details,
                      ),
                    const SizedBox(height: 5),
                    Text(
                      order.customer,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
