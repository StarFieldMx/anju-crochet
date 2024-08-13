import 'package:anju/config/service_locator.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/data/models/threads/thread_brand.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:anju/data/models/threads/thread_type.dart';
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
    on<AddThreadTypeEvent>(_addThreadTypeEvent);
    on<AddThreadColorEvent>(_addThreadColorEvent);
    on<ResetEvent>(_resetEvent);
  }
  void _categorySelectionEvent(
      CategorySelectEvent event, Emitter<ConsumableManagerState> emit) async {
    final brands = await getIt<ConsumablesService>().getThreadBrands();
    final threadTypes = await getIt<ConsumablesService>().getThreadTypes();

    final threadColors = await getIt<ConsumablesService>().getThreadColors();
    emit(ConsumableManagerChoose(
      type: event.type,
      brands: brands,
      threadTypes: threadTypes,
      threadColors: threadColors,
    ));
  }

  void _addThreadBrandEvent(
      AddThreadBrandEvent event, Emitter<ConsumableManagerState> emit) async {
    if (state is ConsumableManagerChoose) {
      final myState = state as ConsumableManagerChoose;
      emit(myState.copyWith(status: ConsumableStatus.loading));

      await getIt<ConsumablesService>().createOrUpdateBrand(event.brand);
      // print(id);
      emit(myState.copyWith(
          status: ConsumableStatus.success,
          // currentBrand: event.brand,
          brands: [...myState.brands, event.brand]));
    }
  }

  void _addThreadTypeEvent(
      AddThreadTypeEvent event, Emitter<ConsumableManagerState> emit) async {
    if (state is ConsumableManagerChoose) {
      final myState = state as ConsumableManagerChoose;
      emit(myState.copyWith(status: ConsumableStatus.loading));
      await getIt<ConsumablesService>().createOrUpdateThreadType(event.type);
      // print(id);
      emit(myState.copyWith(
          status: ConsumableStatus.success,
          // currentBrand: event.brand,
          threadTypes: [...myState.threadTypes, event.type]));
    }
  }

  void _addThreadColorEvent(
      AddThreadColorEvent event, Emitter<ConsumableManagerState> emit) async {
    if (state is ConsumableManagerChoose) {
      final myState = state as ConsumableManagerChoose;
      emit(myState.copyWith(status: ConsumableStatus.loading));
      await getIt<ConsumablesService>().createOrUpdateThreadColor(event.color);
      // print(id);
      emit(myState.copyWith(
          status: ConsumableStatus.success,
          // currentBrand: event.brand,
          threadColors: [...myState.threadColors, event.color]));
    }
  }

  void _resetEvent(
      ResetEvent event, Emitter<ConsumableManagerState> emit) async {
    emit(ConsumableManagerInitialState());
  }
}
