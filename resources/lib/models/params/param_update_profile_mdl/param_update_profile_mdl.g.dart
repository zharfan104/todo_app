// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param_update_profile_mdl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParamUpdateProfileMdl _$ParamUpdateProfileMdlFromJson(
        Map<String, dynamic> json) =>
    ParamUpdateProfileMdl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      age: json['age'] as int?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$ParamUpdateProfileMdlToJson(
        ParamUpdateProfileMdl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'age': instance.age,
      'password': instance.password,
    };
