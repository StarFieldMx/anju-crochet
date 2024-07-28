part of 'consumable_manager_bloc.dart';

enum MaterialActions { create, update }

sealed class ConsumableManagerEvent extends Equatable {
  const ConsumableManagerEvent();

  @override
  List<Object> get props => [];
}

class CategorySelectEvent extends ConsumableManagerEvent {
  final CrochetType type;
  // final MaterialActions action;

  const CategorySelectEvent(this.type);
}
