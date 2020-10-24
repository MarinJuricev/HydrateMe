// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_activity_level.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalActivityLevelAdapter extends TypeAdapter<LocalActivityLevel> {
  @override
  final int typeId = 3;

  @override
  LocalActivityLevel read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return LocalActivityLevel.low;
      case 1:
        return LocalActivityLevel.active;
      case 2:
        return LocalActivityLevel.veryActive;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, LocalActivityLevel obj) {
    switch (obj) {
      case LocalActivityLevel.low:
        writer.writeByte(0);
        break;
      case LocalActivityLevel.active:
        writer.writeByte(1);
        break;
      case LocalActivityLevel.veryActive:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalActivityLevelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
