import 'package:freezed_annotation/freezed_annotation.dart';
part 'fruit_model.g.dart';

@JsonSerializable()
class FruitModel {
  final String name;
  final String family;
  final int id;
  FruitModel({required this.name, required this.family, required this.id});
  factory FruitModel.fromJson(Map<String, dynamic> json) =>
      _$FruitModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$FruitModelToJson(this);
}
