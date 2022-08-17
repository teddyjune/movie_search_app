// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      title: json['title'] as String,
      posterPath: json['posterPath'] as String,
      releaseDate: json['releaseDate'] as String,
      voteCount: json['voteCount'] as num,
      voteAverage: json['voteAverage'] as num,
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'title': instance.title,
      'posterPath': instance.posterPath,
      'releaseDate': instance.releaseDate,
      'voteCount': instance.voteCount,
      'voteAverage': instance.voteAverage,
      'overview': instance.overview,
    };
