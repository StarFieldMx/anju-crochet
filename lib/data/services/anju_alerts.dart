import 'dart:async';

import 'package:anju/config/router/anju_router.dart';
import 'package:anju/config/service_locator.dart';
import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/utils/extensions.dart';
import 'package:anju/data/models/models.dart';
import 'package:anju/interface/views/inventory/consumables_manager/consumable_manager_bloc.dart';
import 'package:anju/interface/views/inventory/widgets/consumables_details.dart';
import 'package:anju/interface/widgets/anju_color_selector.dart';
import 'package:anju/interface/widgets/forms/anju_textfield.dart';
import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AnjuAlerts {
  static BuildContext context = getIt<AnjuRouteCubit>().context;

  static Future<bool> addThreadBrand() async {
    final TextEditingController textController = TextEditingController();
    ArtDialogResponse? response = await ArtSweetAlert.show(
      context: context,
      artDialogArgs: ArtDialogArgs(
        type: ArtSweetAlertType.info,
        title: "Agrega una Marca",
        text: 'Pon el nombre de la marca del hilo.',
        customColumns: [
          Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            child: CupertinoTextField(
              controller: textController,
            ),
          )
        ],
        confirmButtonText: 'Agregar',
      ),
    );

    if (response == null) {
      return false;
    }

    if (response.isTapConfirmButton && textController.text.isEmpty) {
      // Show another alert explaining that the brand name is required
      await ArtSweetAlert.show(
        context: context,
        artDialogArgs: ArtDialogArgs(
          title: "Error",
          text: "El nombre de la marca es obligatorio.",
          confirmButtonText: 'Entendido',
          type: ArtSweetAlertType.warning,
        ),
      );
      // Re-show the original alert to let the user try again
      return await addThreadBrand();
    }

    if (response.isTapConfirmButton) {
      // Assuming ThreadBrand has a constructor that takes a name
      final brand = ThreadBrand()..name = textController.text;
      getIt<ConsumableManagerBloc>().add(AddThreadBrandEvent(brand));
      return true;
    }

    return false;
  }

  static Future<bool> addThreadType() async {
    final TextEditingController textController = TextEditingController();
    ArtDialogResponse? response = await ArtSweetAlert.show(
      context: context,
      artDialogArgs: ArtDialogArgs(
        type: ArtSweetAlertType.info,
        title: "Agrega una tipo de hilo",
        text: 'Pon el nombre del hilo.',
        customColumns: [
          Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            child: CupertinoTextField(
              controller: textController,
            ),
          )
        ],
        confirmButtonText: 'Agregar',
      ),
    );

    if (response == null) {
      return false;
    }

    if (response.isTapConfirmButton && textController.text.isEmpty) {
      // Show another alert explaining that the brand name is required
      await ArtSweetAlert.show(
        context: context,
        artDialogArgs: ArtDialogArgs(
          title: "Error",
          text: "El nombre de la marca es obligatorio.",
          confirmButtonText: 'Entendido',
          type: ArtSweetAlertType.warning,
        ),
      );
      // Re-show the original alert to let the user try again
      return await addThreadBrand();
    }

    if (response.isTapConfirmButton) {
      // Assuming ThreadBrand has a constructor that takes a name
      final type = ThreadType()..name = textController.text;
      getIt<ConsumableManagerBloc>().add(AddThreadTypeEvent(type));
      return true;
    }

    return false;
  }

  static Future<void> missingField(
      {String? text = 'Se te olvido agregar info mi amor'}) async {
    await ArtSweetAlert.show(
      context: context,
      artDialogArgs: ArtDialogArgs(
        type: ArtSweetAlertType.info,
        title: "Oops...",
        text: text,
        confirmButtonText: 'Okok',
      ),
    );
  }

  static Future<void> alertSuccess(
      {String? text = 'Algo bien mi amor!'}) async {
    await ArtSweetAlert.show(
      context: context,
      artDialogArgs: ArtDialogArgs(
        type: ArtSweetAlertType.success,
        title: "Excelente!",
        text: text,
        confirmButtonText: 'Okokok',
      ),
    );
  }

  static Future<void> alertError({String? text = 'Algo mal mi amor!'}) async {
    await ArtSweetAlert.show(
      context: context,
      artDialogArgs: ArtDialogArgs(
        type: ArtSweetAlertType.danger,
        title: "Pipipipi!",
        text: text,
        confirmButtonText: 'Okokok',
      ),
    );
  }

  static Future<ThreadColor?> openColorSelector() async {
    final Completer<ThreadColor?> completer = Completer<ThreadColor?>();
    String? color;
    String? name;
    ColorType type = ColorType.primary;
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          titlePadding: const EdgeInsets.all(0),
          contentPadding: const EdgeInsets.all(0),
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: MediaQuery.of(context).orientation ==
                    Orientation.portrait
                ? const BorderRadius.vertical(
                    top: Radius.circular(500),
                    bottom: Radius.circular(100),
                  )
                : const BorderRadius.horizontal(right: Radius.circular(500)),
          ),
          content: SingleChildScrollView(
            // clipBehavior: Clip.hardEdge,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AnjuColorSelector(
                  selected: color?.toColor(),
                  onChange: (value) {
                    color = value.toHex();
                  },
                ),
                ColorTypeSelector(
                  onChange: (p0) {
                    type = p0;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nombre del color',
                      focusedBorder: myBorders(),
                      enabledBorder:
                          myBorders(color: AnjuColors.primaryShade100),
                      errorBorder: myBorders(color: AnjuColors.secondary),
                    ),
                    onChanged: (value) => name = value,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (name == null || color == null) {
                      AnjuAlerts.missingField(
                          text: 'Te falta agregar un dataso, ¿Cual?, ni idea!');
                      return;
                    }

                    completer.complete(ThreadColor()
                      ..name = name!
                      ..color = color!
                      ..type = type);
                    Navigator.of(context).pop();
                  },
                  child: const Text('Seleccionar'),
                ),
              ],
            ),
          ),
        );
      },
    );

    return completer.future;
  }

  static Future<void> showDetailsConsumable({required Crochet crochet}) async {
    await ArtSweetAlert.show(
      context: context,
      artDialogArgs: ArtDialogArgs(
        dialogDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        // type: ArtSweetAlertType.,
        title: "Detalles del ${crochet.type.spanishSingle}",
        dialogAlignment: Alignment.centerLeft,
        customColumns: [...buildItemDetails(context, crochet)],
        confirmButtonText: 'Listo',
      ),
    );
  }
}
