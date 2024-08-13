part of 'amigurumi_cubit_cubit.dart';

enum AmigurumiCubitStatus { loading, success, error, initial }

class AmigurumiCubitState extends Equatable {
  final List<Yarn> yarns;
  final List<Crochet> materials;
  final List<ThreadBrand> yarnBrands;
  final ThreadBrand? selectedBrand;
  final AmigurumiCubitStatus status;
  const AmigurumiCubitState({
    this.yarns = const [],
    this.materials = const [],
    this.yarnBrands = const [],
    this.selectedBrand,
    this.status = AmigurumiCubitStatus.initial,
  });

  AmigurumiCubitState copyWith(
      {List<Yarn>? yarns,
      List<Crochet>? materials,
      List<ThreadBrand>? yarnBrands,
      ThreadBrand? selectedBrand,
      AmigurumiCubitStatus? status}) {
    return AmigurumiCubitState(
      yarns: yarns ?? this.yarns,
      materials: materials ?? this.materials,
      yarnBrands: yarnBrands ?? this.yarnBrands,
      selectedBrand: selectedBrand ?? this.selectedBrand,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
        yarns,
        materials,
        selectedBrand,
        yarnBrands,
        status,
      ];
}
