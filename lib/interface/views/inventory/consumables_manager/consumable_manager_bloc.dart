import 'package:anju/data/models/crochet.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'consumable_manager_event.dart';
part 'consumable_manager_state.dart';

class ConsumableManagerBloc
    extends Bloc<ConsumableManagerEvent, ConsumableManagerState> {
  ConsumableManagerBloc() : super(ConsumableManagerInitialState()) {
    on<CategorySelectEvent>(_categorySelectionEvent);
  }
  void _categorySelectionEvent(
      CategorySelectEvent event, Emitter<ConsumableManagerState> emit) {
    emit(ConsumableManagerChoose(event.type));
  }
}
