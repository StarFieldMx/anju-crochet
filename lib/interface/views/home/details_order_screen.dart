import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/utils/images_constant.dart';
import 'package:anju/data/models/anju_color.dart';
import 'package:anju/data/models/yarn.dart';
import 'package:flutter/material.dart';
import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/interface/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class DetailsOrderScreen extends StatelessWidget {
  const DetailsOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AnjuTopBar(),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: const [
          DetailAmigurumi(),
          DetailAmigurumi(),
        ],
      ),
    );
  }
}

class DetailAmigurumi extends StatelessWidget {
  const DetailAmigurumi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const _DetailsCard(),
        const SizedBox(height: 20),
        _buildCircles(
          title: 'Color(es)',
          colors: [
            [
              AnjuColor.test(),
              AnjuColor.test(),
            ]
          ],
        ),
        const SizedBox(height: 30),
        _buildCircles(
          title: 'Llaveros',
          colors: [
            [
              AnjuColor.test(),
              AnjuColor.test(),
            ]
          ],
        ),
        const SizedBox(height: 30),
        _buildYarnsDetails(title: 'Hilo', yarns: [Yarn.hilo(id: 1)]),
        const SizedBox(height: 15),
        Divider(color: AnjuColors.primary)
      ],
    );
  }

  Widget _buildYarnsDetails({
    required String title,
    required List<Yarn> yarns,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AnjuTextStyles.mediumTitle,
        ),
        const SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: yarns.map((yarn) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('${yarn.name} ${yarn.thickness} mm'),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildCircles({
    required String title,
    required List<List<AnjuColor>> colors,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AnjuTextStyles.mediumTitle,
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: AnjuColorCircle(colors: colors[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _DetailsCard extends StatelessWidget {
  const _DetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.9;
    return Container(
      constraints: BoxConstraints(maxHeight: width * 1.3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'PANCHO',
            style: AnjuTextStyles.customer.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          AnjuImage(
            imagePath: AnjuImages.test,
            type: ImageType.details,
            //TODO: SET TRUE AND PASS ID
            hero: false,
            width: width,
            height: width * 0.8,
          ),
          const SizedBox(height: 5),
          Text(
            'DUE: ENE 20, 2024',
            style: AnjuTextStyles.date.copyWith(fontSize: 18),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Llavero borrego de la abundancia.',
            style: AnjuTextStyles.titleAmigurumi,
          ),
        ],
      ),
    );
  }
}
