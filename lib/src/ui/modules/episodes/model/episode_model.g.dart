// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EpisodeModel _$$_EpisodeModelFromJson(Map<String, dynamic> json) =>
    _$_EpisodeModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      air_date: json['air_date'] as String?,
      episode: json['episode'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_EpisodeModelToJson(_$_EpisodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'air_date': instance.air_date,
      'episode': instance.episode,
      'url': instance.url,
    };
