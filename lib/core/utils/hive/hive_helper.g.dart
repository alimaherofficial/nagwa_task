// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_helper.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class BooksEntityAdapter extends TypeAdapter<BooksEntity> {
  @override
  final int typeId = 0;

  @override
  BooksEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BooksEntity(
      count: (fields[8] as num?)?.toInt(),
      next: fields[9] as String?,
      previous: fields[10] as String?,
      results: (fields[11] as List?)?.cast<ResultEntity>(),
    );
  }

  @override
  void write(BinaryWriter writer, BooksEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(8)
      ..write(obj.count)
      ..writeByte(9)
      ..write(obj.next)
      ..writeByte(10)
      ..write(obj.previous)
      ..writeByte(11)
      ..write(obj.results);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BooksEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ResultEntityAdapter extends TypeAdapter<ResultEntity> {
  @override
  final int typeId = 1;

  @override
  ResultEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResultEntity(
      id: (fields[12] as num?)?.toInt(),
      title: fields[13] as String?,
      authors: (fields[14] as List?)?.cast<AuthorEntity>(),
      summaries: (fields[15] as List?)?.cast<String>(),
      formats: fields[16] as FormatsEntity?,
    );
  }

  @override
  void write(BinaryWriter writer, ResultEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(12)
      ..write(obj.id)
      ..writeByte(13)
      ..write(obj.title)
      ..writeByte(14)
      ..write(obj.authors)
      ..writeByte(15)
      ..write(obj.summaries)
      ..writeByte(16)
      ..write(obj.formats);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResultEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AuthorEntityAdapter extends TypeAdapter<AuthorEntity> {
  @override
  final int typeId = 2;

  @override
  AuthorEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthorEntity(name: fields[3] as String?);
  }

  @override
  void write(BinaryWriter writer, AuthorEntity obj) {
    writer
      ..writeByte(1)
      ..writeByte(3)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FormatsEntityAdapter extends TypeAdapter<FormatsEntity> {
  @override
  final int typeId = 3;

  @override
  FormatsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FormatsEntity(imageJpeg: fields[13] as String?);
  }

  @override
  void write(BinaryWriter writer, FormatsEntity obj) {
    writer
      ..writeByte(1)
      ..writeByte(13)
      ..write(obj.imageJpeg);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FormatsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
