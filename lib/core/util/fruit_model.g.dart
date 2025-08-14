// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FruitModel _$FruitModelFromJson(Map<String, dynamic> json) => FruitModel(
  name: json['name'] as String,
  family: json['family'] as String,
  id: (json['id'] as num).toInt(),
);

Map<String, dynamic> _$FruitModelToJson(FruitModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'family': instance.family,
      'id': instance.id,
    };
