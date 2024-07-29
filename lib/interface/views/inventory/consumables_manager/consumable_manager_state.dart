part of 'consumable_manager_bloc.dart';

sealed class ConsumableManagerState extends Equatable {
  // ConsumableManagerState({required this.type});

  @override
  List<Object> get props => [];
}

final class ConsumableManagerInitialState extends ConsumableManagerState {}

final class ConsumableManagerChoose extends ConsumableManagerState {
  final CrochetType type;
  ConsumableManagerChoose(this.type);

  @override
  List<Object> get props => [type];
}
