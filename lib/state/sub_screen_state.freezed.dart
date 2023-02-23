// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubScreenState {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubScreenStateCopyWith<SubScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubScreenStateCopyWith<$Res> {
  factory $SubScreenStateCopyWith(
          SubScreenState value, $Res Function(SubScreenState) then) =
      _$SubScreenStateCopyWithImpl<$Res, SubScreenState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$SubScreenStateCopyWithImpl<$Res, $Val extends SubScreenState>
    implements $SubScreenStateCopyWith<$Res> {
  _$SubScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubScreenStateCopyWith<$Res>
    implements $SubScreenStateCopyWith<$Res> {
  factory _$$_SubScreenStateCopyWith(
          _$_SubScreenState value, $Res Function(_$_SubScreenState) then) =
      __$$_SubScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$_SubScreenStateCopyWithImpl<$Res>
    extends _$SubScreenStateCopyWithImpl<$Res, _$_SubScreenState>
    implements _$$_SubScreenStateCopyWith<$Res> {
  __$$_SubScreenStateCopyWithImpl(
      _$_SubScreenState _value, $Res Function(_$_SubScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$_SubScreenState(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SubScreenState
    with DiagnosticableTreeMixin
    implements _SubScreenState {
  const _$_SubScreenState({this.count = 0});

  @override
  @JsonKey()
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubScreenState(count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubScreenState'))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubScreenState &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubScreenStateCopyWith<_$_SubScreenState> get copyWith =>
      __$$_SubScreenStateCopyWithImpl<_$_SubScreenState>(this, _$identity);
}

abstract class _SubScreenState implements SubScreenState {
  const factory _SubScreenState({final int count}) = _$_SubScreenState;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_SubScreenStateCopyWith<_$_SubScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
