// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_hydrate_status.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalHydrateStatusAdapter extends TypeAdapter<LocalHydrateStatus> {
  @override
  final int typeId = 1;

  @override
  LocalHydrateStatus read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalHydrateStatus(
      hydrationPercentage: fields[0] as double,
      formattedCurrentIntake: fields[1] as String,
      dailyIntakeGoal: fields[2] as int,
      currentIntake: fields[3] as int,
      date: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, LocalHydrateStatus obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.hydrationPercentage)
      ..writeByte(1)
      ..write(obj.formattedCurrentIntake)
      ..writeByte(2)
      ..write(obj.dailyIntakeGoal)
      ..writeByte(3)
      ..write(obj.currentIntake)
      ..writeByte(4)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalHydrateStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
