// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pet _$PetFromJson(Map<String, dynamic> json) => Pet(
      id: json['id'] as int?,
      name: json['name'] as String,
      image: json['image'] as String,
      adopted: json['adopted'] as bool? ?? false,
      age: json['age'] as int,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$PetToJson(Pet instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'age': instance.age,
      'adopted': instance.adopted,
      'gender': instance.gender,
    };
