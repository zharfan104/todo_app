// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_get_task_mdl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseGetTaskMdl _$ResponseGetTaskMdlFromJson(Map<String, dynamic> json) =>
    ResponseGetTaskMdl(
      count: json['count'] as int?,
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => TaskMdl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseGetTaskMdlToJson(ResponseGetTaskMdl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'tasks': instance.tasks,
    };
