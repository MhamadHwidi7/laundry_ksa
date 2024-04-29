// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_driver_order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseDriverOrdersEntity _$BaseDriverOrdersEntityFromJson(
        Map<String, dynamic> json) =>
    BaseDriverOrdersEntity(
      id: json['id'] as String,
      laundry: LaundryEntity.fromJson(json['laundry'] as Map<String, dynamic>),
      driver: json['driver'] as String,
      year: json['year'] as String,
      month: json['month'] as String,
      day: json['day'] as String,
      orders: (json['orders'] as List<dynamic>)
          .map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeframeStart: json['timeframestart'] as String,
      timeframeEnd: json['timeframeend'] as String,
      type: json['type'] as String,
      done: json['done'] as bool,
      firstOrder: json['firstOrder'] as String?,
      startHour: json['startHour'] as String,
      endHour: json['endHour'] as String,
    );

Map<String, dynamic> _$BaseDriverOrdersEntityToJson(
        BaseDriverOrdersEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'laundry': instance.laundry,
      'driver': instance.driver,
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'orders': instance.orders,
      'timeframestart': instance.timeframeStart,
      'timeframeend': instance.timeframeEnd,
      'type': instance.type,
      'done': instance.done,
      'firstOrder': instance.firstOrder,
      'startHour': instance.startHour,
      'endHour': instance.endHour,
    };

LaundryEntity _$LaundryEntityFromJson(Map<String, dynamic> json) =>
    LaundryEntity(
      id: json['id'] as String,
      fullname: json['fullname'] as String,
    );

Map<String, dynamic> _$LaundryEntityToJson(LaundryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
    };

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) => OrderEntity(
      id: json['id'] as String,
      customer:
          CustomerEntity.fromJson(json['customer'] as Map<String, dynamic>),
      status: json['status'] as String,
      iron: (json['iron'] as List<dynamic>)
          .map((e) => ItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      both: (json['both'] as List<dynamic>)
          .map((e) => ItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      clean: (json['clean'] as List<dynamic>)
          .map((e) => ItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderEntityToJson(OrderEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer,
      'status': instance.status,
      'iron': instance.iron,
      'both': instance.both,
      'clean': instance.clean,
    };

CustomerEntity _$CustomerEntityFromJson(Map<String, dynamic> json) =>
    CustomerEntity(
      id: json['id'] as String,
      address: AddressEntity.fromJson(json['address'] as Map<String, dynamic>),
      phonenumber: json['phonenumber'] as String,
    );

Map<String, dynamic> _$CustomerEntityToJson(CustomerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'phonenumber': instance.phonenumber,
    };

AddressEntity _$AddressEntityFromJson(Map<String, dynamic> json) =>
    AddressEntity(
      apartment: json['apartment'] == null
          ? null
          : ApartmentEntity.fromJson(json['apartment'] as Map<String, dynamic>),
      villa: json['villa'] == null
          ? null
          : VillaEntity.fromJson(json['villa'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressEntityToJson(AddressEntity instance) =>
    <String, dynamic>{
      'apartment': instance.apartment,
      'villa': instance.villa,
    };

ApartmentEntity _$ApartmentEntityFromJson(Map<String, dynamic> json) =>
    ApartmentEntity(
      buildingNumber: json['buildingnumber'],
      apartmentNumber: json['apartmentnumber'],
    );

Map<String, dynamic> _$ApartmentEntityToJson(ApartmentEntity instance) =>
    <String, dynamic>{
      'buildingnumber': instance.buildingNumber,
      'apartmentnumber': instance.apartmentNumber,
    };

VillaEntity _$VillaEntityFromJson(Map<String, dynamic> json) => VillaEntity(
      villanumber: json['villanumber'] as String,
    );

Map<String, dynamic> _$VillaEntityToJson(VillaEntity instance) =>
    <String, dynamic>{
      'villanumber': instance.villanumber,
    };

ItemEntity _$ItemEntityFromJson(Map<String, dynamic> json) => ItemEntity(
      id: json['id'] as String,
      piecetype: json['piecetype'] as String,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$ItemEntityToJson(ItemEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'piecetype': instance.piecetype,
      'quantity': instance.quantity,
    };
