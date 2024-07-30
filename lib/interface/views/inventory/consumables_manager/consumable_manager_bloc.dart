import 'package:anju/config/service_locator.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/data/models/threads/thread_brand.dart';
import 'package:anju/data/services/consumables_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'consumable_manager_event.dart';
part 'consumable_manager_state.dart';

class ConsumableManagerBloc
    extends Bloc<ConsumableManagerEvent, ConsumableManagerState> {
  ConsumableManagerBloc() : super(ConsumableManagerInitialState()) {
    on<CategorySelectEvent>(_categorySelectionEvent);
    on<AddThreadBrandEvent>(_addThreadBrandEvent);
    on<ResetEvent>(_resetEvent);
  }
  void _categorySelectionEvent(
      CategorySelectEvent event, Emitter<ConsumableManagerState> emit) async {
    final brands = await getIt<ConsumablesService>().getThreadBrands();
    emit(ConsumableManagerChoose(type: event.type, brands: brands));
  }

  void _addThreadBrandEvent(
      AddThreadBrandEvent event, Emitter<ConsumableManagerState> emit) async {
    if (state is ConsumableManagerChoose) {
      final myState = state as ConsumableManagerChoose;
      emit(myState.copyWith(status: ConsumableStatus.loading));
      final id =
          await getIt<ConsumablesService>().createOrUpdateBrand(event.brand);
      print(id);
      emit(myState.copyWith(
          status: ConsumableStatus.success,
          // currentBrand: event.brand,
          brands: [...myState.brands, event.brand]));
    }
  }

  void _resetEvent(
      ResetEvent event, Emitter<ConsumableManagerState> emit) async {
    emit(ConsumableManagerInitialState());
  }
}
