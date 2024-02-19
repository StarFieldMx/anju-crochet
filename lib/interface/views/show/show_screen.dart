import 'dart:ui';

import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:anju/data/models/amigurumi.dart';
import 'package:anju/interface/widgets/anju_image.dart';
import 'package:anju/interface/widgets/anju_item_list_viewer.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// Muestra muñequitos que maneja
class AmigurumiShowScreen extends StatelessWidget {
  const AmigurumiShowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: REMOVE
    List<Amigurumi> amigurumis =
        List.generate(10, (index) => Amigurumi.random());

    return AnjuItemListViewer<Amigurumi>(
      list: amigurumis,
      childBuilder: (amigurumi) => Card(
        clipBehavior: Clip.hardEdge,
        shadowColor: Colors.black,
        elevation: 2,
        child: SizedBox(
          height: 412,
          child: Stack(
            children: [
              AnjuImage(
                imagePath: amigurumi.images.first.url,
                hero: false,
                height: 412,
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 2,
                    sigmaY: 2,
                    tileMode: TileMode.decal,
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
              Positioned(
                  top: 15,
                  left: 20,
                  child: Text('AVAILABLE', style: AnjuTextStyles.available)),
              Positioned(
                top: 50,
                left: 20,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width -
                      80, // ? Ancho máximo del texto
                  child: Text(
                    'Borrego de la abundacia',
                    style: AnjuTextStyles.titleCard,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      title: 'Amugurumi',
    );
  }
}
