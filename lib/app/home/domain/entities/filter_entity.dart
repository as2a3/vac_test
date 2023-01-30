import 'package:equatable/equatable.dart';

class FilterEntity extends Equatable {
  final String id;
  final String name;
  final int itemsCount;
  final double total;

  const FilterEntity({
    required this.id,
    required this.name,
    required this.itemsCount,
    required this.total,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        itemsCount,
        total,
      ];
}
