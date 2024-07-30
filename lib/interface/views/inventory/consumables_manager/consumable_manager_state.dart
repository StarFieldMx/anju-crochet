part of 'consumable_manager_bloc.dart';

enum ConsumableStatus { initial, loading, success, error }

sealed class ConsumableManagerState extends Equatable {
  // ConsumableManagerState({required this.type});
  final ConsumableStatus status;
  const ConsumableManagerState({this.status = ConsumableStatus.initial});
  @override
  List<Object> get props => [status];
}

final class ConsumableManagerInitialState extends ConsumableManagerState {}

final class ConsumableManagerChoose extends ConsumableManagerState {
  final CrochetType type;
  final List<ThreadBrand> brands;

  const ConsumableManagerChoose({
    required this.type,
    this.brands = const [],
    // this.currentBrand,
    super.status = ConsumableStatus.loading,
  });

  @override
  List<Object> get props => [type, brands];

  ConsumableManagerChoose copyWith(
      {List<ThreadBrand>? brands,
      ConsumableStatus? status,
      ThreadBrand? currentBrand}) {
    return ConsumableManagerChoose(
      type: type,
      brands: brands ?? this.brands,
      status: status ?? this.status,
    );
  }
}
