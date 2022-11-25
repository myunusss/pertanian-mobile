// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'laporan_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LaporanDataTearOff {
  const _$LaporanDataTearOff();

  _LaporanData call(
      {required String? year,
      required List<Fruit>? fruits,
      required List<Fruit>? vegetables,
      required List<Fruit>? biopharmaceuticals}) {
    return _LaporanData(
      year: year,
      fruits: fruits,
      vegetables: vegetables,
      biopharmaceuticals: biopharmaceuticals,
    );
  }
}

/// @nodoc
const $LaporanData = _$LaporanDataTearOff();

/// @nodoc
mixin _$LaporanData {
  String? get year => throw _privateConstructorUsedError;
  List<Fruit>? get fruits => throw _privateConstructorUsedError;
  List<Fruit>? get vegetables => throw _privateConstructorUsedError;
  List<Fruit>? get biopharmaceuticals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaporanDataCopyWith<LaporanData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanDataCopyWith<$Res> {
  factory $LaporanDataCopyWith(
          LaporanData value, $Res Function(LaporanData) then) =
      _$LaporanDataCopyWithImpl<$Res>;
  $Res call(
      {String? year,
      List<Fruit>? fruits,
      List<Fruit>? vegetables,
      List<Fruit>? biopharmaceuticals});
}

/// @nodoc
class _$LaporanDataCopyWithImpl<$Res> implements $LaporanDataCopyWith<$Res> {
  _$LaporanDataCopyWithImpl(this._value, this._then);

  final LaporanData _value;
  // ignore: unused_field
  final $Res Function(LaporanData) _then;

  @override
  $Res call({
    Object? year = freezed,
    Object? fruits = freezed,
    Object? vegetables = freezed,
    Object? biopharmaceuticals = freezed,
  }) {
    return _then(_value.copyWith(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      fruits: fruits == freezed
          ? _value.fruits
          : fruits // ignore: cast_nullable_to_non_nullable
              as List<Fruit>?,
      vegetables: vegetables == freezed
          ? _value.vegetables
          : vegetables // ignore: cast_nullable_to_non_nullable
              as List<Fruit>?,
      biopharmaceuticals: biopharmaceuticals == freezed
          ? _value.biopharmaceuticals
          : biopharmaceuticals // ignore: cast_nullable_to_non_nullable
              as List<Fruit>?,
    ));
  }
}

/// @nodoc
abstract class _$LaporanDataCopyWith<$Res>
    implements $LaporanDataCopyWith<$Res> {
  factory _$LaporanDataCopyWith(
          _LaporanData value, $Res Function(_LaporanData) then) =
      __$LaporanDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? year,
      List<Fruit>? fruits,
      List<Fruit>? vegetables,
      List<Fruit>? biopharmaceuticals});
}

/// @nodoc
class __$LaporanDataCopyWithImpl<$Res> extends _$LaporanDataCopyWithImpl<$Res>
    implements _$LaporanDataCopyWith<$Res> {
  __$LaporanDataCopyWithImpl(
      _LaporanData _value, $Res Function(_LaporanData) _then)
      : super(_value, (v) => _then(v as _LaporanData));

  @override
  _LaporanData get _value => super._value as _LaporanData;

  @override
  $Res call({
    Object? year = freezed,
    Object? fruits = freezed,
    Object? vegetables = freezed,
    Object? biopharmaceuticals = freezed,
  }) {
    return _then(_LaporanData(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      fruits: fruits == freezed
          ? _value.fruits
          : fruits // ignore: cast_nullable_to_non_nullable
              as List<Fruit>?,
      vegetables: vegetables == freezed
          ? _value.vegetables
          : vegetables // ignore: cast_nullable_to_non_nullable
              as List<Fruit>?,
      biopharmaceuticals: biopharmaceuticals == freezed
          ? _value.biopharmaceuticals
          : biopharmaceuticals // ignore: cast_nullable_to_non_nullable
              as List<Fruit>?,
    ));
  }
}

/// @nodoc

class _$_LaporanData implements _LaporanData {
  const _$_LaporanData(
      {required this.year,
      required this.fruits,
      required this.vegetables,
      required this.biopharmaceuticals});

  @override
  final String? year;
  @override
  final List<Fruit>? fruits;
  @override
  final List<Fruit>? vegetables;
  @override
  final List<Fruit>? biopharmaceuticals;

  @override
  String toString() {
    return 'LaporanData(year: $year, fruits: $fruits, vegetables: $vegetables, biopharmaceuticals: $biopharmaceuticals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LaporanData &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.fruits, fruits) &&
            const DeepCollectionEquality()
                .equals(other.vegetables, vegetables) &&
            const DeepCollectionEquality()
                .equals(other.biopharmaceuticals, biopharmaceuticals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(fruits),
      const DeepCollectionEquality().hash(vegetables),
      const DeepCollectionEquality().hash(biopharmaceuticals));

  @JsonKey(ignore: true)
  @override
  _$LaporanDataCopyWith<_LaporanData> get copyWith =>
      __$LaporanDataCopyWithImpl<_LaporanData>(this, _$identity);
}

abstract class _LaporanData implements LaporanData {
  const factory _LaporanData(
      {required String? year,
      required List<Fruit>? fruits,
      required List<Fruit>? vegetables,
      required List<Fruit>? biopharmaceuticals}) = _$_LaporanData;

  @override
  String? get year;
  @override
  List<Fruit>? get fruits;
  @override
  List<Fruit>? get vegetables;
  @override
  List<Fruit>? get biopharmaceuticals;
  @override
  @JsonKey(ignore: true)
  _$LaporanDataCopyWith<_LaporanData> get copyWith =>
      throw _privateConstructorUsedError;
}
