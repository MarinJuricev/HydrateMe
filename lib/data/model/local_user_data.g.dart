// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalUserDataAdapter extends TypeAdapter<LocalUserData> {
  @override
  final int typeId = 0;

  @override
  LocalUserData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalUserData(
      wakeUpTime: fields[0] as TimeOfDay,
      sleepTime: fields[1] as TimeOfDay,
      currentWeight: fields[2] as int,
      gender: fields[3] as Gender,
      weightType: fields[4] as WeightType,
      activityLevel: fields[5] as ActivityLevel,
    );
  }

  @override
  void write(BinaryWriter writer, LocalUserData obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.wakeUpTime)
      ..writeByte(1)
      ..write(obj.sleepTime)
      ..writeByte(2)
      ..write(obj.currentWeight)
      ..writeByte(3)
      ..write(obj.gender)
      ..writeByte(4)
      ..write(obj.weightType)
      ..writeByte(5)
      ..write(obj.activityLevel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalUserDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
