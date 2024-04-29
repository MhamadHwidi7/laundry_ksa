import 'package:json_annotation/json_annotation.dart';

part 'base_driver_order_entity.g.dart';

@JsonSerializable()
class BaseDriverOrdersEntity {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'laundry')
  final LaundryEntity laundry;

  @JsonKey(name: 'driver')
  final String driver;

  @JsonKey(name: 'year')
  final String year;

  @JsonKey(name: 'month')
  final String month;

  @JsonKey(name: 'day')
  final String day;

  @JsonKey(name: 'orders')
  final List<OrderEntity> orders;

  @JsonKey(name: 'timeframestart')
  final String timeframeStart;

  @JsonKey(name: 'timeframeend')
  final String timeframeEnd;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'done')
  final bool done;

  @JsonKey(name: 'firstOrder')
  final String? firstOrder;

  @JsonKey(name: 'startHour')
  final String startHour;

  @JsonKey(name: 'endHour')
  final String endHour;

  BaseDriverOrdersEntity({
    required this.id,
    required this.laundry,
    required this.driver,
    required this.year,
    required this.month,
    required this.day,
    required this.orders,
    required this.timeframeStart,
    required this.timeframeEnd,
    required this.type,
    required this.done,
    required this.firstOrder,
    required this.startHour,
    required this.endHour,
  });

  factory BaseDriverOrdersEntity.fromJson(Map<String, dynamic> json) => _$BaseDriverOrdersEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BaseDriverOrdersEntityToJson(this);
}

@JsonSerializable()
class LaundryEntity {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'fullname')
  final String fullname;

  LaundryEntity({
    required this.id,
    required this.fullname,
  });

  factory LaundryEntity.fromJson(Map<String, dynamic> json) => _$LaundryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LaundryEntityToJson(this);
}

@JsonSerializable()
class OrderEntity {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'customer')
  final CustomerEntity customer;

  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'iron')
  final List<ItemEntity> iron;

  @JsonKey(name: 'both')
  final List<ItemEntity> both;

  @JsonKey(name: 'clean')
  final List<ItemEntity> clean;

  OrderEntity({
    required this.id,
    required this.customer,
    required this.status,
    required this.iron,
    required this.both,
    required this.clean,
  });

  factory OrderEntity.fromJson(Map<String, dynamic> json) => _$OrderEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OrderEntityToJson(this);
}

@JsonSerializable()
class CustomerEntity {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'address')
  final AddressEntity address;

  @JsonKey(name: 'phonenumber')
  final String phonenumber;

  CustomerEntity({
    required this.id,
    required this.address,
    required this.phonenumber,
  });

  factory CustomerEntity.fromJson(Map<String, dynamic> json) => _$CustomerEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerEntityToJson(this);
}

@JsonSerializable()
class AddressEntity {
  @JsonKey(name: 'apartment')
  final ApartmentEntity? apartment;

  @JsonKey(name: 'villa')
  final VillaEntity? villa;

  AddressEntity({this.apartment, this.villa});

  factory AddressEntity.fromJson(Map<String, dynamic> json) => _$AddressEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AddressEntityToJson(this);
}

@JsonSerializable()
class ApartmentEntity {
  @JsonKey(name: 'buildingnumber')
  final dynamic buildingNumber;

  @JsonKey(name: 'apartmentnumber')
  final dynamic apartmentNumber;

  ApartmentEntity({this.buildingNumber, this.apartmentNumber});

  factory ApartmentEntity.fromJson(Map<String, dynamic> json) => _$ApartmentEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ApartmentEntityToJson(this);
}

@JsonSerializable()
class VillaEntity {
  @JsonKey(name: 'villanumber')
  final String villanumber;

  VillaEntity({required this.villanumber});

  factory VillaEntity.fromJson(Map<String, dynamic> json) => _$VillaEntityFromJson(json);

  Map<String, dynamic> toJson() => _$VillaEntityToJson(this);
}

@JsonSerializable()
class ItemEntity {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'piecetype')
  final String piecetype;

  @JsonKey(name: 'quantity')
  final int quantity;

  ItemEntity({
    required this.id,
    required this.piecetype,
    required this.quantity,
  });

  factory ItemEntity.fromJson(Map<String, dynamic> json) => _$ItemEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ItemEntityToJson(this);
}
