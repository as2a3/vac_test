import 'package:json_annotation/json_annotation.dart';
import 'package:vac_test/app/home/domain/entities/order_entity.dart';

part 'order_model.g.dart';

@JsonSerializable()
class OrderModel extends OrderEntity {
  final String orderNo;
  final int orderItemsCount;
  final String orderDateTime;
  final int orderSold;
  final int orderDriver;
  final int orderFood;
  final int orderCommission;
  final int orderNetProfit;

  const OrderModel({
    this.orderNo = '',
    this.orderItemsCount = 0,
    this.orderDateTime = '',
    this.orderSold = 0,
    this.orderDriver = 0,
    this.orderFood = 0,
    this.orderCommission = 0,
    this.orderNetProfit = 0,
  }) : super(
          id: orderNo,
          itemsCount: orderItemsCount,
          dateTime: orderDateTime,
          sold: orderSold,
          driver: orderDriver,
          food: orderFood,
          commission: orderCommission,
          netProfit: orderNetProfit,
        );

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}
