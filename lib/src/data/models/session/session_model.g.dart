// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionModel _$$_SessionModelFromJson(Map<String, dynamic> json) =>
    _$_SessionModel(
      username: json['username'] as String,
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      createdOn: json['createdOn'] == null
          ? null
          : DateTime.parse(json['createdOn'] as String),
    );

Map<String, dynamic> _$$_SessionModelToJson(_$_SessionModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'createdOn': instance.createdOn?.toIso8601String(),
    };
