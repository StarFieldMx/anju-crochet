import 'package:anju/config/router/anju_router.dart';
import 'package:anju/config/service_locator.dart';
import 'package:anju/data/models/threads/thread_brand.dart';
import 'package:anju/interface/views/inventory/consumables_manager/consumable_manager_bloc.dart';
import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/cupertino.dart';

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
}
