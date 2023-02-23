import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_screen_state.freezed.dart';

@freezed
class SubScreenState with _$SubScreenState {
  const factory SubScreenState({
    @Default(0) int count,
  }) = _SubScreenState;
}