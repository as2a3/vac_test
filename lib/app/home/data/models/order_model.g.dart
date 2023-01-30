// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      orderNo: json['orderNo'] as String? ?? '',
      orderItemsCount: json['orderItemsCount'] as int? ?? 0,
      orderDateTime: json['orderDateTime'] as String? ?? '',
      orderSold: json['orderSold'] as int? ?? 0,
      orderDriver: json['orderDriver'] as int? ?? 0,
      orderFood: json['orderFood'] as int? ?? 0,
      orderCommission: json['orderCommission'] as int? ?? 0,
      orderNetProfit: json['orderNetProfit'] as int? ?? 0,
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'orderNo': instance.orderNo,
      'orderItemsCount': instance.orderItemsCount,
      'orderDateTime': instance.orderDateTime,
      'orderSold': instance.orderSold,
      'orderDriver': instance.orderDriver,
      'orderFood': instance.orderFood,
      'orderCommission': instance.orderCommission,
      'orderNetProfit': instance.orderNetProfit,
    };
