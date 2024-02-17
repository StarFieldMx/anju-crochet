import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/config/utils/utils.dart';
import 'package:flutter/material.dart';
// Models
import 'package:anju/data/models/orders.dart';
// Packages
import 'package:auto_route/auto_route.dart';
// widgets
import 'package:anju/interface/widgets/anju_image.dart';

// TODO: IMPLEMENT UI
@RoutePage()
class DetailsOrderScreen extends StatefulWidget {
  const DetailsOrderScreen({super.key, required this.order});
  final Orders order;

  @override
  State<DetailsOrderScreen> createState() => _DetailsOrderScreenState();
}

class _DetailsOrderScreenState extends State<DetailsOrderScreen> {
  bool _visible = false;
  bool _activate = false;
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    _controller.addListener(() {
      if (_controller.position.pixels > 200 &&
          _controller.position.pixels < 300) {
        setState(() {
          _activate = true;
        });
      } else if (_controller.position.pixels > 300) {
        setState(() {
          _visible = true;
        });
      } else {
        setState(() {
          _visible = false;
          _activate = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _controller,
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 300,
              stretch: true,
              backgroundColor: AnjuColor.primary,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('Detalles del pedido'),
                background: AnjuImage(
                  width: MediaQuery.of(context).size.width * 0.8,
                  type: ImageType.details,
                  id: widget.order.id,
                  imagePath: AnjuImages.test,
                ),
              ),
              snap: true,
              pinned: true,
              floating: true,
            )
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 80),
                if (_activate)
                  AnimatedOpacity(
                    opacity: _visible ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 800),
                    child: _DetailsCard(order: widget.order),
                  ),
                if (!_visible)
                  AnimatedOpacity(
                    opacity: !_visible ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 800),
                    child: _Details(order: widget.order),
                  ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text('ESPECIFICACIONES'),
                )
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

  final Orders order;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.9;
    return Container(
      constraints: const BoxConstraints(maxHeight: 600),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            order.customer,
            style: AnjuTextStyles.customer.copyWith(fontSize: 22),
          ),
          const SizedBox(height: 10),
          AnjuImage(
            imagePath: AnjuImages.test,
            type: ImageType.details,
            hero: false,
            width: width,
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
            'Llavero borrego de la abundancia ',
            style: AnjuTextStyles.titleAmigurumi,
          ),
        ],
      ),
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({
    required this.order,
  });

  final Orders order;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.9;
    return Container(
      constraints: const BoxConstraints(maxHeight: 600),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            order.customer,
            style: AnjuTextStyles.customer.copyWith(fontSize: 22),
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
            'Llavero borrego de la abundancia ',
            style: AnjuTextStyles.titleAmigurumi,
          ),
        ],
      ),
    );
  }
}
