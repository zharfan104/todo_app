// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_get_task_mdl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseGetTaskMdl _$$_ResponseGetTaskMdlFromJson(
        Map<String, dynamic> json) =>
    _$_ResponseGetTaskMdl(
      count: json['count'] as int?,
      tasks: (json['data'] as List<dynamic>?)
          ?.map((e) => TaskMdl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseGetTaskMdlToJson(
        _$_ResponseGetTaskMdl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'data': instance.tasks,
    };
