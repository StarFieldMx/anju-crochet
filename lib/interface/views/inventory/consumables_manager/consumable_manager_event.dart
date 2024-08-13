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

class AddThreadBrandEvent extends ConsumableManagerEvent {
  final ThreadBrand brand;
  // final MaterialActions action;

  const AddThreadBrandEvent(this.brand);
}

class AddThreadTypeEvent extends ConsumableManagerEvent {
  final ThreadType type;
  // final MaterialActions action;

  const AddThreadTypeEvent(this.type);
}

class AddThreadColorEvent extends ConsumableManagerEvent {
  final ThreadColor color;
  // final MaterialActions action;

  const AddThreadColorEvent(this.color);
}

class ResetEvent extends ConsumableManagerEvent {
  // final ThreadBrand brand;
  // final MaterialActions action;

  const ResetEvent();
}
