// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DashboardStateTearOff {
  const _$DashboardStateTearOff();

  _DashboardState call(
      {ResultState<Comodities> getComoditiesResultState =
          const ResultState.initial(),
      List<Comodity> comodities = const [Comodity(id: 1, name: '')],
      int? comodityId,
      ResultState<DashboardData?> getDashboardResultState =
          const ResultState.initial(),
      DashboardData? dashboardData,
      GetDashboardUseCaseParams? getDashboardUseCaseParams}) {
    return _DashboardState(
      getComoditiesResultState: getComoditiesResultState,
      comodities: comodities,
      comodityId: comodityId,
      getDashboardResultState: getDashboardResultState,
      dashboardData: dashboardData,
      getDashboardUseCaseParams: getDashboardUseCaseParams,
    );
  }
}

/// @nodoc
const $DashboardState = _$DashboardStateTearOff();

/// @nodoc
mixin _$DashboardState {
  ResultState<Comodities> get getComoditiesResultState =>
      throw _privateConstructorUsedError;
  List<Comodity> get comodities => throw _privateConstructorUsedError;
  int? get comodityId => throw _privateConstructorUsedError;
  ResultState<DashboardData?> get getDashboardResultState =>
      throw _privateConstructorUsedError;
  DashboardData? get dashboardData => throw _privateConstructorUsedError;
  GetDashboardUseCaseParams? get getDashboardUseCaseParams =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState<Comodities> getComoditiesResultState,
      List<Comodity> comodities,
      int? comodityId,
      ResultState<DashboardData?> getDashboardResultState,
      DashboardData? dashboardData,
      GetDashboardUseCaseParams? getDashboardUseCaseParams});

  $ResultStateCopyWith<Comodities, $Res> get getComoditiesResultState;
  $ResultStateCopyWith<DashboardData?, $Res> get getDashboardResultState;
  $DashboardDataCopyWith<$Res>? get dashboardData;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;

  @override
  $Res call({
    Object? getComoditiesResultState = freezed,
    Object? comodities = freezed,
    Object? comodityId = freezed,
    Object? getDashboardResultState = freezed,
    Object? dashboardData = freezed,
    Object? getDashboardUseCaseParams = freezed,
  }) {
    return _then(_value.copyWith(
      getComoditiesResultState: getComoditiesResultState == freezed
          ? _value.getComoditiesResultState
          : getComoditiesResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<Comodities>,
      comodities: comodities == freezed
          ? _value.comodities
          : comodities // ignore: cast_nullable_to_non_nullable
              as List<Comodity>,
      comodityId: comodityId == freezed
          ? _value.comodityId
          : comodityId // ignore: cast_nullable_to_non_nullable
              as int?,
      getDashboardResultState: getDashboardResultState == freezed
          ? _value.getDashboardResultState
          : getDashboardResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<DashboardData?>,
      dashboardData: dashboardData == freezed
          ? _value.dashboardData
          : dashboardData // ignore: cast_nullable_to_non_nullable
              as DashboardData?,
      getDashboardUseCaseParams: getDashboardUseCaseParams == freezed
          ? _value.getDashboardUseCaseParams
          : getDashboardUseCaseParams // ignore: cast_nullable_to_non_nullable
              as GetDashboardUseCaseParams?,
    ));
  }

  @override
  $ResultStateCopyWith<Comodities, $Res> get getComoditiesResultState {
    return $ResultStateCopyWith<Comodities, $Res>(
        _value.getComoditiesResultState, (value) {
      return _then(_value.copyWith(getComoditiesResultState: value));
    });
  }

  @override
  $ResultStateCopyWith<DashboardData?, $Res> get getDashboardResultState {
    return $ResultStateCopyWith<DashboardData?, $Res>(
        _value.getDashboardResultState, (value) {
      return _then(_value.copyWith(getDashboardResultState: value));
    });
  }

  @override
  $DashboardDataCopyWith<$Res>? get dashboardData {
    if (_value.dashboardData == null) {
      return null;
    }

    return $DashboardDataCopyWith<$Res>(_value.dashboardData!, (value) {
      return _then(_value.copyWith(dashboardData: value));
    });
  }
}

/// @nodoc
abstract class _$DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(
          _DashboardState value, $Res Function(_DashboardState) then) =
      __$DashboardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState<Comodities> getComoditiesResultState,
      List<Comodity> comodities,
      int? comodityId,
      ResultState<DashboardData?> getDashboardResultState,
      DashboardData? dashboardData,
      GetDashboardUseCaseParams? getDashboardUseCaseParams});

  @override
  $ResultStateCopyWith<Comodities, $Res> get getComoditiesResultState;
  @override
  $ResultStateCopyWith<DashboardData?, $Res> get getDashboardResultState;
  @override
  $DashboardDataCopyWith<$Res>? get dashboardData;
}

/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(
      _DashboardState _value, $Res Function(_DashboardState) _then)
      : super(_value, (v) => _then(v as _DashboardState));

  @override
  _DashboardState get _value => super._value as _DashboardState;

  @override
  $Res call({
    Object? getComoditiesResultState = freezed,
    Object? comodities = freezed,
    Object? comodityId = freezed,
    Object? getDashboardResultState = freezed,
    Object? dashboardData = freezed,
    Object? getDashboardUseCaseParams = freezed,
  }) {
    return _then(_DashboardState(
      getComoditiesResultState: getComoditiesResultState == freezed
          ? _value.getComoditiesResultState
          : getComoditiesResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<Comodities>,
      comodities: comodities == freezed
          ? _value.comodities
          : comodities // ignore: cast_nullable_to_non_nullable
              as List<Comodity>,
      comodityId: comodityId == freezed
          ? _value.comodityId
          : comodityId // ignore: cast_nullable_to_non_nullable
              as int?,
      getDashboardResultState: getDashboardResultState == freezed
          ? _value.getDashboardResultState
          : getDashboardResultState // ignore: cast_nullable_to_non_nullable
              as ResultState<DashboardData?>,
      dashboardData: dashboardData == freezed
          ? _value.dashboardData
          : dashboardData // ignore: cast_nullable_to_non_nullable
              as DashboardData?,
      getDashboardUseCaseParams: getDashboardUseCaseParams == freezed
          ? _value.getDashboardUseCaseParams
          : getDashboardUseCaseParams // ignore: cast_nullable_to_non_nullable
              as GetDashboardUseCaseParams?,
    ));
  }
}

/// @nodoc

class _$_DashboardState implements _DashboardState {
  const _$_DashboardState(
      {this.getComoditiesResultState = const ResultState.initial(),
      this.comodities = const [Comodity(id: 1, name: '')],
      this.comodityId,
      this.getDashboardResultState = const ResultState.initial(),
      this.dashboardData,
      this.getDashboardUseCaseParams});

  @JsonKey()
  @override
  final ResultState<Comodities> getComoditiesResultState;
  @JsonKey()
  @override
  final List<Comodity> comodities;
  @override
  final int? comodityId;
  @JsonKey()
  @override
  final ResultState<DashboardData?> getDashboardResultState;
  @override
  final DashboardData? dashboardData;
  @override
  final GetDashboardUseCaseParams? getDashboardUseCaseParams;

  @override
  String toString() {
    return 'DashboardState(getComoditiesResultState: $getComoditiesResultState, comodities: $comodities, comodityId: $comodityId, getDashboardResultState: $getDashboardResultState, dashboardData: $dashboardData, getDashboardUseCaseParams: $getDashboardUseCaseParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DashboardState &&
            const DeepCollectionEquality().equals(
                other.getComoditiesResultState, getComoditiesResultState) &&
            const DeepCollectionEquality()
                .equals(other.comodities, comodities) &&
            const DeepCollectionEquality()
                .equals(other.comodityId, comodityId) &&
            const DeepCollectionEquality().equals(
                other.getDashboardResultState, getDashboardResultState) &&
            const DeepCollectionEquality()
                .equals(other.dashboardData, dashboardData) &&
            const DeepCollectionEquality().equals(
                other.getDashboardUseCaseParams, getDashboardUseCaseParams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(getComoditiesResultState),
      const DeepCollectionEquality().hash(comodities),
      const DeepCollectionEquality().hash(comodityId),
      const DeepCollectionEquality().hash(getDashboardResultState),
      const DeepCollectionEquality().hash(dashboardData),
      const DeepCollectionEquality().hash(getDashboardUseCaseParams));

  @JsonKey(ignore: true)
  @override
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
          {ResultState<Comodities> getComoditiesResultState,
          List<Comodity> comodities,
          int? comodityId,
          ResultState<DashboardData?> getDashboardResultState,
          DashboardData? dashboardData,
          GetDashboardUseCaseParams? getDashboardUseCaseParams}) =
      _$_DashboardState;

  @override
  ResultState<Comodities> get getComoditiesResultState;
  @override
  List<Comodity> get comodities;
  @override
  int? get comodityId;
  @override
  ResultState<DashboardData?> get getDashboardResultState;
  @override
  DashboardData? get dashboardData;
  @override
  GetDashboardUseCaseParams? get getDashboardUseCaseParams;
  @override
  @JsonKey(ignore: true)
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
