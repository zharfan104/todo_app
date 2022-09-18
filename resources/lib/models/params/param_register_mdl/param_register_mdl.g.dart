// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param_register_mdl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParamRegisterMdl _$ParamRegisterMdlFromJson(Map<String, dynamic> json) =>
    ParamRegisterMdl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      age: json['age'] as int?,
    );

Map<String, dynamic> _$ParamRegisterMdlToJson(ParamRegisterMdl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'age': instance.age,
    };
