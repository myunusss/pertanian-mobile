// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'laporan_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaporanDataResponse _$LaporanDataResponseFromJson(Map<String, dynamic> json) {
  return _LaporanDataResponse.fromJson(json);
}

/// @nodoc
class _$LaporanDataResponseTearOff {
  const _$LaporanDataResponseTearOff();

  _LaporanDataResponse call(
      {String? year,
      List<FruitResponse>? fruits,
      List<FruitResponse>? vegetables,
      List<FruitResponse>? biopharmaceuticals}) {
    return _LaporanDataResponse(
      year: year,
      fruits: fruits,
      vegetables: vegetables,
      biopharmaceuticals: biopharmaceuticals,
    );
  }

  LaporanDataResponse fromJson(Map<String, Object?> json) {
    return LaporanDataResponse.fromJson(json);
  }
}

/// @nodoc
const $LaporanDataResponse = _$LaporanDataResponseTearOff();

/// @nodoc
mixin _$LaporanDataResponse {
  String? get year => throw _privateConstructorUsedError;
  List<FruitResponse>? get fruits => throw _privateConstructorUsedError;
  List<FruitResponse>? get vegetables => throw _privateConstructorUsedError;
  List<FruitResponse>? get biopharmaceuticals =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaporanDataResponseCopyWith<LaporanDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanDataResponseCopyWith<$Res> {
  factory $LaporanDataResponseCopyWith(
          LaporanDataResponse value, $Res Function(LaporanDataResponse) then) =
      _$LaporanDataResponseCopyWithImpl<$Res>;
  $Res call(
      {String? year,
      List<FruitResponse>? fruits,
      List<FruitResponse>? vegetables,
      List<FruitResponse>? biopharmaceuticals});
}

/// @nodoc
class _$LaporanDataResponseCopyWithImpl<$Res>
    implements $LaporanDataResponseCopyWith<$Res> {
  _$LaporanDataResponseCopyWithImpl(this._value, this._then);

  final LaporanDataResponse _value;
  // ignore: unused_field
  final $Res Function(LaporanDataResponse) _then;

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
              as List<FruitResponse>?,
      vegetables: vegetables == freezed
          ? _value.vegetables
          : vegetables // ignore: cast_nullable_to_non_nullable
              as List<FruitResponse>?,
      biopharmaceuticals: biopharmaceuticals == freezed
          ? _value.biopharmaceuticals
          : biopharmaceuticals // ignore: cast_nullable_to_non_nullable
              as List<FruitResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$LaporanDataResponseCopyWith<$Res>
    implements $LaporanDataResponseCopyWith<$Res> {
  factory _$LaporanDataResponseCopyWith(_LaporanDataResponse value,
          $Res Function(_LaporanDataResponse) then) =
      __$LaporanDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? year,
      List<FruitResponse>? fruits,
      List<FruitResponse>? vegetables,
      List<FruitResponse>? biopharmaceuticals});
}

/// @nodoc
class __$LaporanDataResponseCopyWithImpl<$Res>
    extends _$LaporanDataResponseCopyWithImpl<$Res>
    implements _$LaporanDataResponseCopyWith<$Res> {
  __$LaporanDataResponseCopyWithImpl(
      _LaporanDataResponse _value, $Res Function(_LaporanDataResponse) _then)
      : super(_value, (v) => _then(v as _LaporanDataResponse));

  @override
  _LaporanDataResponse get _value => super._value as _LaporanDataResponse;

  @override
  $Res call({
    Object? year = freezed,
    Object? fruits = freezed,
    Object? vegetables = freezed,
    Object? biopharmaceuticals = freezed,
  }) {
    return _then(_LaporanDataResponse(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      fruits: fruits == freezed
          ? _value.fruits
          : fruits // ignore: cast_nullable_to_non_nullable
              as List<FruitResponse>?,
      vegetables: vegetables == freezed
          ? _value.vegetables
          : vegetables // ignore: cast_nullable_to_non_nullable
              as List<FruitResponse>?,
      biopharmaceuticals: biopharmaceuticals == freezed
          ? _value.biopharmaceuticals
          : biopharmaceuticals // ignore: cast_nullable_to_non_nullable
              as List<FruitResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LaporanDataResponse extends _LaporanDataResponse {
  const _$_LaporanDataResponse(
      {this.year, this.fruits, this.vegetables, this.biopharmaceuticals})
      : super._();

  factory _$_LaporanDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LaporanDataResponseFromJson(json);

  @override
  final String? year;
  @override
  final List<FruitResponse>? fruits;
  @override
  final List<FruitResponse>? vegetables;
  @override
  final List<FruitResponse>? biopharmaceuticals;

  @override
  String toString() {
    return 'LaporanDataResponse(year: $year, fruits: $fruits, vegetables: $vegetables, biopharmaceuticals: $biopharmaceuticals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LaporanDataResponse &&
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
  _$LaporanDataResponseCopyWith<_LaporanDataResponse> get copyWith =>
      __$LaporanDataResponseCopyWithImpl<_LaporanDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaporanDataResponseToJson(this);
  }
}

abstract class _LaporanDataResponse extends LaporanDataResponse {
  const factory _LaporanDataResponse(
      {String? year,
      List<FruitResponse>? fruits,
      List<FruitResponse>? vegetables,
      List<FruitResponse>? biopharmaceuticals}) = _$_LaporanDataResponse;
  const _LaporanDataResponse._() : super._();

  factory _LaporanDataResponse.fromJson(Map<String, dynamic> json) =
      _$_LaporanDataResponse.fromJson;

  @override
  String? get year;
  @override
  List<FruitResponse>? get fruits;
  @override
  List<FruitResponse>? get vegetables;
  @override
  List<FruitResponse>? get biopharmaceuticals;
  @override
  @JsonKey(ignore: true)
  _$LaporanDataResponseCopyWith<_LaporanDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
