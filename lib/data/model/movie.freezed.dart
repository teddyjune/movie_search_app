// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError; //영화포스터
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError; //개봉일자
  @JsonKey(name: 'vote_count')
  num get voteCount => throw _privateConstructorUsedError; //좋아요 갯수
  @JsonKey(name: 'vote_average')
  num get voteAverage => throw _privateConstructorUsedError; //평균점수
  String get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {String title,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'vote_count') num voteCount,
      @JsonKey(name: 'vote_average') num voteAverage,
      String overview});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? voteCount = freezed,
    Object? voteAverage = freezed,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as num,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$_MovieCopyWith(_$_Movie value, $Res Function(_$_Movie) then) =
      __$$_MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'vote_count') num voteCount,
      @JsonKey(name: 'vote_average') num voteAverage,
      String overview});
}

/// @nodoc
class __$$_MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$$_MovieCopyWith<$Res> {
  __$$_MovieCopyWithImpl(_$_Movie _value, $Res Function(_$_Movie) _then)
      : super(_value, (v) => _then(v as _$_Movie));

  @override
  _$_Movie get _value => super._value as _$_Movie;

  @override
  $Res call({
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? voteCount = freezed,
    Object? voteAverage = freezed,
    Object? overview = freezed,
  }) {
    return _then(_$_Movie(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as num,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie implements _Movie {
  const _$_Movie(
      {required this.title,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'release_date') required this.releaseDate,
      @JsonKey(name: 'vote_count') required this.voteCount,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      required this.overview});

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
//영화포스터
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
//개봉일자
  @override
  @JsonKey(name: 'vote_count')
  final num voteCount;
//좋아요 갯수
  @override
  @JsonKey(name: 'vote_average')
  final num voteAverage;
//평균점수
  @override
  final String overview;

  @override
  String toString() {
    return 'Movie(title: $title, posterPath: $posterPath, releaseDate: $releaseDate, voteCount: $voteCount, voteAverage: $voteAverage, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Movie &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.overview, overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(voteCount),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(overview));

  @JsonKey(ignore: true)
  @override
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      __$$_MovieCopyWithImpl<_$_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(
      this,
    );
  }
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {required final String title,
      @JsonKey(name: 'poster_path') required final String posterPath,
      @JsonKey(name: 'release_date') required final String releaseDate,
      @JsonKey(name: 'vote_count') required final num voteCount,
      @JsonKey(name: 'vote_average') required final num voteAverage,
      required final String overview}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override //영화포스터
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override //개봉일자
  @JsonKey(name: 'vote_count')
  num get voteCount;
  @override //좋아요 갯수
  @JsonKey(name: 'vote_average')
  num get voteAverage;
  @override //평균점수
  String get overview;
  @override
  @JsonKey(ignore: true)
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      throw _privateConstructorUsedError;
}
