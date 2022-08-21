import 'package:json_annotation/json_annotation.dart';   // toJson 불필요시 삭제
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/model/movie.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default([]) List<Movie> movies,
    @Default(false) bool isLoading,
  }) = _MainState;

  factory MainState.fromJson(Map<String, Object?> json) => _$MainStateFromJson(json);
}