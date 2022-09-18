// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data_mdl.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthDataMdlAdapter extends TypeAdapter<AuthDataMdl> {
  @override
  final int typeId = 1;

  @override
  AuthDataMdl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthDataMdl()..userToken = fields[0] as String?;
  }

  @override
  void write(BinaryWriter writer, AuthDataMdl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.userToken);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthDataMdlAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
