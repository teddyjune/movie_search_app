// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getSearchedMovies,
    required TResult Function(Exception e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? getSearchedMovies,
    TResult Function(Exception e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getSearchedMovies,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSearchedMovies value) getSearchedMovies,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSearchedMovies value)? getSearchedMovies,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSearchedMovies value)? getSearchedMovies,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainActionCopyWith<$Res> {
  factory $MainActionCopyWith(
          MainAction value, $Res Function(MainAction) then) =
      _$MainActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainActionCopyWithImpl<$Res> implements $MainActionCopyWith<$Res> {
  _$MainActionCopyWithImpl(this._value, this._then);

  final MainAction _value;
  // ignore: unused_field
  final $Res Function(MainAction) _then;
}

/// @nodoc
abstract class _$$GetSearchedMoviesCopyWith<$Res> {
  factory _$$GetSearchedMoviesCopyWith(
          _$GetSearchedMovies value, $Res Function(_$GetSearchedMovies) then) =
      __$$GetSearchedMoviesCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$$GetSearchedMoviesCopyWithImpl<$Res>
    extends _$MainActionCopyWithImpl<$Res>
    implements _$$GetSearchedMoviesCopyWith<$Res> {
  __$$GetSearchedMoviesCopyWithImpl(
      _$GetSearchedMovies _value, $Res Function(_$GetSearchedMovies) _then)
      : super(_value, (v) => _then(v as _$GetSearchedMovies));

  @override
  _$GetSearchedMovies get _value => super._value as _$GetSearchedMovies;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$GetSearchedMovies(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSearchedMovies implements GetSearchedMovies {
  const _$GetSearchedMovies(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'MainAction.getSearchedMovies(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSearchedMovies &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$GetSearchedMoviesCopyWith<_$GetSearchedMovies> get copyWith =>
      __$$GetSearchedMoviesCopyWithImpl<_$GetSearchedMovies>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getSearchedMovies,
    required TResult Function(Exception e) error,
  }) {
    return getSearchedMovies(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? getSearchedMovies,
    TResult Function(Exception e)? error,
  }) {
    return getSearchedMovies?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getSearchedMovies,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (getSearchedMovies != null) {
      return getSearchedMovies(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSearchedMovies value) getSearchedMovies,
    required TResult Function(Error value) error,
  }) {
    return getSearchedMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSearchedMovies value)? getSearchedMovies,
    TResult Function(Error value)? error,
  }) {
    return getSearchedMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSearchedMovies value)? getSearchedMovies,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (getSearchedMovies != null) {
      return getSearchedMovies(this);
    }
    return orElse();
  }
}

abstract class GetSearchedMovies implements MainAction {
  const factory GetSearchedMovies(final String query) = _$GetSearchedMovies;

  String get query;
  @JsonKey(ignore: true)
  _$$GetSearchedMoviesCopyWith<_$GetSearchedMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  $Res call({Exception e});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$MainActionCopyWithImpl<$Res>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$Error(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.e);

  @override
  final Exception e;

  @override
  String toString() {
    return 'MainAction.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) getSearchedMovies,
    required TResult Function(Exception e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? getSearchedMovies,
    TResult Function(Exception e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? getSearchedMovies,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSearchedMovies value) getSearchedMovies,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetSearchedMovies value)? getSearchedMovies,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSearchedMovies value)? getSearchedMovies,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements MainAction {
  const factory Error(final Exception e) = _$Error;

  Exception get e;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
