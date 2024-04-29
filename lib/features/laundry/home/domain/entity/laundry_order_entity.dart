import 'package:json_annotation/json_annotation.dart';

part 'laundry_order_entity.g.dart';

@JsonSerializable()
class BaseLaundryOrderEntity {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'customername')
  final String customerName;

  @JsonKey(name: 'laundry')
  final String laundry;

  @JsonKey(name: 'customer')
  final String customer;

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'cost')
  final int cost;

  @JsonKey(name: 'datetopickup')
  final String dateToPickup;

  @JsonKey(name: 'datetodelever')
  final String dateToDeliver;

  @JsonKey(name: 'paymentmethod')
  final String paymentMethod;

  @JsonKey(name: 'iron')
  final List<OrderTypeEntity> iron;

  @JsonKey(name: 'both')
  final List<OrderTypeEntity> both;

  @JsonKey(name: 'clean')
  final List<OrderTypeEntity> clean;

  @JsonKey(name: 'driver')
  final String driver;

  @JsonKey(name: 'timeframe', fromJson: _timeframeFromJson, toJson: _timeframeToJson)
  final Timeframe timeframe;

  BaseLaundryOrderEntity({
    required this.id,
    required this.customerName,
    required this.laundry,
    required this.customer,
    required this.status,
    required this.cost,
    required this.dateToPickup,
    required this.dateToDeliver,
    required this.paymentMethod,
    required this.iron,
    required this.both,
    required this.clean,
    required this.driver,
    required this.timeframe,
  });

  factory BaseLaundryOrderEntity.fromJson(Map<String, dynamic> json) =>
      _$BaseLaundryOrderEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BaseLaundryOrderEntityToJson(this);

  static Timeframe _timeframeFromJson(dynamic json) =>
      Timeframe.fromJson(json as Map<String, dynamic>);

  static dynamic _timeframeToJson(Timeframe timeframe) => timeframe.toJson();
}

@JsonSerializable()
class Timeframe {
  @JsonKey(name: 'start')
  final String start;

  @JsonKey(name: 'end')
  final String end;

  Timeframe({required this.start, required this.end});

  factory Timeframe.fromJson(Map<String, dynamic> json) =>
      _$TimeframeFromJson(json);

  Map<String, dynamic> toJson() => _$TimeframeToJson(this);
}

@JsonSerializable()
class OrderTypeEntity {
  @JsonKey(name: 'piecetype')
  final String pieceType;

  @JsonKey(name: 'quantity')
  final int quantity;

  @JsonKey(name: 'id')
  final String id;

  OrderTypeEntity({required this.pieceType, required this.quantity, required this.id});

  factory OrderTypeEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderTypeEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OrderTypeEntityToJson(this);
}
