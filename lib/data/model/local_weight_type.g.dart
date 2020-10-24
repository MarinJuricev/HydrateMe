// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_weight_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalWeightTypeAdapter extends TypeAdapter<LocalWeightType> {
  @override
  final int typeId = 2;

  @override
  LocalWeightType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return LocalWeightType.kg;
      case 1:
        return LocalWeightType.lbs;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, LocalWeightType obj) {
    switch (obj) {
      case LocalWeightType.kg:
        writer.writeByte(0);
        break;
      case LocalWeightType.lbs:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalWeightTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
