// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class CartDtoAdapter extends TypeAdapter<CartDto> {
  @override
  final typeId = 2;

  @override
  CartDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartDto(
      index: fields[5] == null ? 0 : (fields[5] as num).toInt(),
      id: fields[0] as String,
      name: fields[1] as String,
      date: fields[2] as DateTime,
      items: fields[4] == null ? [] : (fields[4] as List).cast<CartItemDto>(),
    );
  }

  @override
  void write(BinaryWriter writer, CartDto obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.items)
      ..writeByte(5)
      ..write(obj.index);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CartItemDtoAdapter extends TypeAdapter<CartItemDto> {
  @override
  final typeId = 3;

  @override
  CartItemDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartItemDto(
      id: fields[0] as String,
      value: fields[1] as String,
      date: fields[2] as DateTime,
      marked: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CartItemDto obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.value)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.marked);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItemDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
