// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comodity_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComodityResponse _$ComodityResponseFromJson(Map<String, dynamic> json) {
  return _ComodityResponse.fromJson(json);
}

/// @nodoc
class _$ComodityResponseTearOff {
  const _$ComodityResponseTearOff();

  _ComodityResponse call(
      {int? id,
      String? name,
      String? type,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) {
    return _ComodityResponse(
      id: id,
      name: name,
      type: type,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  ComodityResponse fromJson(Map<String, Object?> json) {
    return ComodityResponse.fromJson(json);
  }
}

/// @nodoc
const $ComodityResponse = _$ComodityResponseTearOff();

/// @nodoc
mixin _$ComodityResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComodityResponseCopyWith<ComodityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComodityResponseCopyWith<$Res> {
  factory $ComodityResponseCopyWith(
          ComodityResponse value, $Res Function(ComodityResponse) then) =
      _$ComodityResponseCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? type,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$ComodityResponseCopyWithImpl<$Res>
    implements $ComodityResponseCopyWith<$Res> {
  _$ComodityResponseCopyWithImpl(this._value, this._then);

  final ComodityResponse _value;
  // ignore: unused_field
  final $Res Function(ComodityResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ComodityResponseCopyWith<$Res>
    implements $ComodityResponseCopyWith<$Res> {
  factory _$ComodityResponseCopyWith(
          _ComodityResponse value, $Res Function(_ComodityResponse) then) =
      __$ComodityResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? type,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$ComodityResponseCopyWithImpl<$Res>
    extends _$ComodityResponseCopyWithImpl<$Res>
    implements _$ComodityResponseCopyWith<$Res> {
  __$ComodityResponseCopyWithImpl(
      _ComodityResponse _value, $Res Function(_ComodityResponse) _then)
      : super(_value, (v) => _then(v as _ComodityResponse));

  @override
  _ComodityResponse get _value => super._value as _ComodityResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ComodityResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComodityResponse extends _ComodityResponse {
  const _$_ComodityResponse(
      {this.id,
      this.name,
      this.type,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : super._();

  factory _$_ComodityResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ComodityResponseFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ComodityResponse(id: $id, name: $name, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ComodityResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$ComodityResponseCopyWith<_ComodityResponse> get copyWith =>
      __$ComodityResponseCopyWithImpl<_ComodityResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComodityResponseToJson(this);
  }
}

abstract class _ComodityResponse extends ComodityResponse {
  const factory _ComodityResponse(
      {int? id,
      String? name,
      String? type,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$_ComodityResponse;
  const _ComodityResponse._() : super._();

  factory _ComodityResponse.fromJson(Map<String, dynamic> json) =
      _$_ComodityResponse.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$ComodityResponseCopyWith<_ComodityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
