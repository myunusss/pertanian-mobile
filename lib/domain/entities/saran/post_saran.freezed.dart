// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_saran.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostSaranTearOff {
  const _$PostSaranTearOff();

  _PostSaran call({required int? statusCode, required String? message}) {
    return _PostSaran(
      statusCode: statusCode,
      message: message,
    );
  }
}

/// @nodoc
const $PostSaran = _$PostSaranTearOff();

/// @nodoc
mixin _$PostSaran {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostSaranCopyWith<PostSaran> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSaranCopyWith<$Res> {
  factory $PostSaranCopyWith(PostSaran value, $Res Function(PostSaran) then) =
      _$PostSaranCopyWithImpl<$Res>;
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class _$PostSaranCopyWithImpl<$Res> implements $PostSaranCopyWith<$Res> {
  _$PostSaranCopyWithImpl(this._value, this._then);

  final PostSaran _value;
  // ignore: unused_field
  final $Res Function(PostSaran) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PostSaranCopyWith<$Res> implements $PostSaranCopyWith<$Res> {
  factory _$PostSaranCopyWith(
          _PostSaran value, $Res Function(_PostSaran) then) =
      __$PostSaranCopyWithImpl<$Res>;
  @override
  $Res call({int? statusCode, String? message});
}

/// @nodoc
class __$PostSaranCopyWithImpl<$Res> extends _$PostSaranCopyWithImpl<$Res>
    implements _$PostSaranCopyWith<$Res> {
  __$PostSaranCopyWithImpl(_PostSaran _value, $Res Function(_PostSaran) _then)
      : super(_value, (v) => _then(v as _PostSaran));

  @override
  _PostSaran get _value => super._value as _PostSaran;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_PostSaran(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PostSaran implements _PostSaran {
  const _$_PostSaran({required this.statusCode, required this.message});

  @override
  final int? statusCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'PostSaran(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostSaran &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$PostSaranCopyWith<_PostSaran> get copyWith =>
      __$PostSaranCopyWithImpl<_PostSaran>(this, _$identity);
}

abstract class _PostSaran implements PostSaran {
  const factory _PostSaran(
      {required int? statusCode, required String? message}) = _$_PostSaran;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$PostSaranCopyWith<_PostSaran> get copyWith =>
      throw _privateConstructorUsedError;
}
