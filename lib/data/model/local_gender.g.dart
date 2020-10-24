// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_gender.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalGenderAdapter extends TypeAdapter<LocalGender> {
  @override
  final int typeId = 1;

  @override
  LocalGender read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return LocalGender.male;
      case 1:
        return LocalGender.female;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, LocalGender obj) {
    switch (obj) {
      case LocalGender.male:
        writer.writeByte(0);
        break;
      case LocalGender.female:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalGenderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
