// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laundry_order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseLaundryOrderEntity _$BaseLaundryOrderEntityFromJson(
        Map<String, dynamic> json) =>
    BaseLaundryOrderEntity(
      id: json['id'] as String,
      customerName: json['customername'] as String,
      laundry: json['laundry'] as String,
      customer: json['customer'] as String,
      status: json['status'] as String,
      cost: json['cost'] as int,
      dateToPickup: json['datetopickup'] as String,
      dateToDeliver: json['datetodelever'] as String,
      paymentMethod: json['paymentmethod'] as String,
      iron: (json['iron'] as List<dynamic>)
          .map((e) => OrderTypeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      both: (json['both'] as List<dynamic>)
          .map((e) => OrderTypeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      clean: (json['clean'] as List<dynamic>)
          .map((e) => OrderTypeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      driver: json['driver'] as String,
      timeframe: BaseLaundryOrderEntity._timeframeFromJson(json['timeframe']),
    );

Map<String, dynamic> _$BaseLaundryOrderEntityToJson(
        BaseLaundryOrderEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customername': instance.customerName,
      'laundry': instance.laundry,
      'customer': instance.customer,
      'status': instance.status,
      'cost': instance.cost,
      'datetopickup': instance.dateToPickup,
      'datetodelever': instance.dateToDeliver,
      'paymentmethod': instance.paymentMethod,
      'iron': instance.iron,
      'both': instance.both,
      'clean': instance.clean,
      'driver': instance.driver,
      'timeframe': BaseLaundryOrderEntity._timeframeToJson(instance.timeframe),
    };

Timeframe _$TimeframeFromJson(Map<String, dynamic> json) => Timeframe(
      start: json['start'] as String,
      end: json['end'] as String,
    );

Map<String, dynamic> _$TimeframeToJson(Timeframe instance) => <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

OrderTypeEntity _$OrderTypeEntityFromJson(Map<String, dynamic> json) =>
    OrderTypeEntity(
      pieceType: json['piecetype'] as String,
      quantity: json['quantity'] as int,
      id: json['id'] as String,
    );

Map<String, dynamic> _$OrderTypeEntityToJson(OrderTypeEntity instance) =>
    <String, dynamic>{
      'piecetype': instance.pieceType,
      'quantity': instance.quantity,
      'id': instance.id,
    };
