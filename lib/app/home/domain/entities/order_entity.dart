import 'package:equatable/equatable.dart';

class OrderEntity extends Equatable {
  final String id;
  final int itemsCount;
  final String dateTime;
  final int sold;
  final int driver;
  final int food;
  final int commission;
  final int netProfit;

  const OrderEntity({
    required this.id,
    required this.itemsCount,
    required this.dateTime,
    required this.sold,
    required this.driver,
    required this.food,
    required this.commission,
    required this.netProfit,
  });

  @override
  List<Object?> get props => [
        id,
        itemsCount,
        dateTime,
        sold,
        driver,
        food,
        commission,
        netProfit,
      ];
}
