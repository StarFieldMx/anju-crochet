import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/config/utils/utils.dart';
import 'package:anju/data/models/yarn.dart';
import 'package:anju/interface/widgets/widgets.dart';
import 'package:flutter/material.dart';
// Models
import 'package:anju/data/models/models.dart';
// Packages
import 'package:auto_route/auto_route.dart';
// widgets

// TODO: IMPLEMENT UI
@RoutePage()
class DetailsOrderScreen extends StatelessWidget {
  const DetailsOrderScreen({super.key, required this.order});
  final Order order;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AnjuTopBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                _DetailsCard(order: order),
                const SizedBox(height: 20),
                const Text('Colors'),
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
                const Text('Llaveros'),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(8, (index) {
                      final test = Yarn.llavero(id: index);
                      return AnjuColorCircle(
                        colors: [test.color],
                        name: test.name,
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DetailsCard extends StatelessWidget {
  const _DetailsCard({
    required this.order,
  });

  final Order order;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.9;
    return Container(
      constraints: BoxConstraints(maxHeight: width * 1.3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            order.customer.toUpperCase(),
            style: AnjuTextStyles.customer.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          AnjuImage(
            id: order.id,
            imagePath: AnjuImages.test,
            type: ImageType.details,
            width: width,
            height: width * 0.8,
          ),
          const SizedBox(height: 5),
          Text(
            'DUE: ${order.dueDate}',
            style: AnjuTextStyles.date.copyWith(fontSize: 18),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          // TODO: order.idAmigurumi (OBTENER AMIGURUMI y nombre de este)
          Text(
            'Llavero borrego de la abundancia.',
            style: AnjuTextStyles.titleAmigurumi,
          ),
        ],
      ),
    );
  }
}
