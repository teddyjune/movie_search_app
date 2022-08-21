// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      title: json['title'] as String,
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      voteCount: json['vote_count'] as num,
      voteAverage: json['vote_average'] as num,
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'title': instance.title,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'vote_count': instance.voteCount,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
    };
