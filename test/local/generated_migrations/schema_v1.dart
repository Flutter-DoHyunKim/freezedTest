// GENERATED CODE, DO NOT EDIT BY HAND.
// ignore_for_file: type=lint
//@dart=2.12
import 'package:drift/drift.dart';

class FavoriteMovies extends Table
    with TableInfo<FavoriteMovies, FavoriteMoviesData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  FavoriteMovies(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  late final GeneratedColumn<bool> adult = GeneratedColumn<bool>(
      'adult', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("adult" IN (0, 1))'));
  late final GeneratedColumn<String> originalTitle = GeneratedColumn<String>(
      'original_title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> backdropPath = GeneratedColumn<String>(
      'backdrop_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> genreIds = GeneratedColumn<String>(
      'genre_ids', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> originalLanguage = GeneratedColumn<String>(
      'original_language', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> overview = GeneratedColumn<String>(
      'overview', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<double> popularity = GeneratedColumn<double>(
      'popularity', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  late final GeneratedColumn<String> posterPath = GeneratedColumn<String>(
      'poster_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> releaseDate = GeneratedColumn<String>(
      'release_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<bool> video = GeneratedColumn<bool>(
      'video', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("video" IN (0, 1))'));
  late final GeneratedColumn<double> voteAverage = GeneratedColumn<double>(
      'vote_average', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  late final GeneratedColumn<int> voteCount = GeneratedColumn<int>(
      'vote_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        adult,
        originalTitle,
        backdropPath,
        genreIds,
        originalLanguage,
        overview,
        popularity,
        posterPath,
        releaseDate,
        title,
        video,
        voteAverage,
        voteCount
      ];
  @override
  String get aliasedName => _alias ?? 'favorite_movies';
  @override
  String get actualTableName => 'favorite_movies';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteMoviesData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoriteMoviesData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      adult: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}adult'])!,
      originalTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}original_title'])!,
      backdropPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}backdrop_path'])!,
      genreIds: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genre_ids'])!,
      originalLanguage: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}original_language'])!,
      overview: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}overview'])!,
      popularity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}popularity'])!,
      posterPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}poster_path'])!,
      releaseDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}release_date'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      video: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}video'])!,
      voteAverage: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}vote_average'])!,
      voteCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}vote_count'])!,
    );
  }

  @override
  FavoriteMovies createAlias(String alias) {
    return FavoriteMovies(attachedDatabase, alias);
  }
}

class FavoriteMoviesData extends DataClass
    implements Insertable<FavoriteMoviesData> {
  final int id;
  final bool adult;
  final String originalTitle;
  final String backdropPath;
  final String genreIds;
  final String originalLanguage;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;
  const FavoriteMoviesData(
      {required this.id,
      required this.adult,
      required this.originalTitle,
      required this.backdropPath,
      required this.genreIds,
      required this.originalLanguage,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.releaseDate,
      required this.title,
      required this.video,
      required this.voteAverage,
      required this.voteCount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['adult'] = Variable<bool>(adult);
    map['original_title'] = Variable<String>(originalTitle);
    map['backdrop_path'] = Variable<String>(backdropPath);
    map['genre_ids'] = Variable<String>(genreIds);
    map['original_language'] = Variable<String>(originalLanguage);
    map['overview'] = Variable<String>(overview);
    map['popularity'] = Variable<double>(popularity);
    map['poster_path'] = Variable<String>(posterPath);
    map['release_date'] = Variable<String>(releaseDate);
    map['title'] = Variable<String>(title);
    map['video'] = Variable<bool>(video);
    map['vote_average'] = Variable<double>(voteAverage);
    map['vote_count'] = Variable<int>(voteCount);
    return map;
  }

  FavoriteMoviesCompanion toCompanion(bool nullToAbsent) {
    return FavoriteMoviesCompanion(
      id: Value(id),
      adult: Value(adult),
      originalTitle: Value(originalTitle),
      backdropPath: Value(backdropPath),
      genreIds: Value(genreIds),
      originalLanguage: Value(originalLanguage),
      overview: Value(overview),
      popularity: Value(popularity),
      posterPath: Value(posterPath),
      releaseDate: Value(releaseDate),
      title: Value(title),
      video: Value(video),
      voteAverage: Value(voteAverage),
      voteCount: Value(voteCount),
    );
  }

  factory FavoriteMoviesData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoriteMoviesData(
      id: serializer.fromJson<int>(json['id']),
      adult: serializer.fromJson<bool>(json['adult']),
      originalTitle: serializer.fromJson<String>(json['originalTitle']),
      backdropPath: serializer.fromJson<String>(json['backdropPath']),
      genreIds: serializer.fromJson<String>(json['genreIds']),
      originalLanguage: serializer.fromJson<String>(json['originalLanguage']),
      overview: serializer.fromJson<String>(json['overview']),
      popularity: serializer.fromJson<double>(json['popularity']),
      posterPath: serializer.fromJson<String>(json['posterPath']),
      releaseDate: serializer.fromJson<String>(json['releaseDate']),
      title: serializer.fromJson<String>(json['title']),
      video: serializer.fromJson<bool>(json['video']),
      voteAverage: serializer.fromJson<double>(json['voteAverage']),
      voteCount: serializer.fromJson<int>(json['voteCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'adult': serializer.toJson<bool>(adult),
      'originalTitle': serializer.toJson<String>(originalTitle),
      'backdropPath': serializer.toJson<String>(backdropPath),
      'genreIds': serializer.toJson<String>(genreIds),
      'originalLanguage': serializer.toJson<String>(originalLanguage),
      'overview': serializer.toJson<String>(overview),
      'popularity': serializer.toJson<double>(popularity),
      'posterPath': serializer.toJson<String>(posterPath),
      'releaseDate': serializer.toJson<String>(releaseDate),
      'title': serializer.toJson<String>(title),
      'video': serializer.toJson<bool>(video),
      'voteAverage': serializer.toJson<double>(voteAverage),
      'voteCount': serializer.toJson<int>(voteCount),
    };
  }

  FavoriteMoviesData copyWith(
          {int? id,
          bool? adult,
          String? originalTitle,
          String? backdropPath,
          String? genreIds,
          String? originalLanguage,
          String? overview,
          double? popularity,
          String? posterPath,
          String? releaseDate,
          String? title,
          bool? video,
          double? voteAverage,
          int? voteCount}) =>
      FavoriteMoviesData(
        id: id ?? this.id,
        adult: adult ?? this.adult,
        originalTitle: originalTitle ?? this.originalTitle,
        backdropPath: backdropPath ?? this.backdropPath,
        genreIds: genreIds ?? this.genreIds,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        overview: overview ?? this.overview,
        popularity: popularity ?? this.popularity,
        posterPath: posterPath ?? this.posterPath,
        releaseDate: releaseDate ?? this.releaseDate,
        title: title ?? this.title,
        video: video ?? this.video,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
      );
  @override
  String toString() {
    return (StringBuffer('FavoriteMoviesData(')
          ..write('id: $id, ')
          ..write('adult: $adult, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('genreIds: $genreIds, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('overview: $overview, ')
          ..write('popularity: $popularity, ')
          ..write('posterPath: $posterPath, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('title: $title, ')
          ..write('video: $video, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('voteCount: $voteCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      adult,
      originalTitle,
      backdropPath,
      genreIds,
      originalLanguage,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      voteCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteMoviesData &&
          other.id == this.id &&
          other.adult == this.adult &&
          other.originalTitle == this.originalTitle &&
          other.backdropPath == this.backdropPath &&
          other.genreIds == this.genreIds &&
          other.originalLanguage == this.originalLanguage &&
          other.overview == this.overview &&
          other.popularity == this.popularity &&
          other.posterPath == this.posterPath &&
          other.releaseDate == this.releaseDate &&
          other.title == this.title &&
          other.video == this.video &&
          other.voteAverage == this.voteAverage &&
          other.voteCount == this.voteCount);
}

class FavoriteMoviesCompanion extends UpdateCompanion<FavoriteMoviesData> {
  final Value<int> id;
  final Value<bool> adult;
  final Value<String> originalTitle;
  final Value<String> backdropPath;
  final Value<String> genreIds;
  final Value<String> originalLanguage;
  final Value<String> overview;
  final Value<double> popularity;
  final Value<String> posterPath;
  final Value<String> releaseDate;
  final Value<String> title;
  final Value<bool> video;
  final Value<double> voteAverage;
  final Value<int> voteCount;
  const FavoriteMoviesCompanion({
    this.id = const Value.absent(),
    this.adult = const Value.absent(),
    this.originalTitle = const Value.absent(),
    this.backdropPath = const Value.absent(),
    this.genreIds = const Value.absent(),
    this.originalLanguage = const Value.absent(),
    this.overview = const Value.absent(),
    this.popularity = const Value.absent(),
    this.posterPath = const Value.absent(),
    this.releaseDate = const Value.absent(),
    this.title = const Value.absent(),
    this.video = const Value.absent(),
    this.voteAverage = const Value.absent(),
    this.voteCount = const Value.absent(),
  });
  FavoriteMoviesCompanion.insert({
    this.id = const Value.absent(),
    required bool adult,
    required String originalTitle,
    required String backdropPath,
    required String genreIds,
    required String originalLanguage,
    required String overview,
    required double popularity,
    required String posterPath,
    required String releaseDate,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  })  : adult = Value(adult),
        originalTitle = Value(originalTitle),
        backdropPath = Value(backdropPath),
        genreIds = Value(genreIds),
        originalLanguage = Value(originalLanguage),
        overview = Value(overview),
        popularity = Value(popularity),
        posterPath = Value(posterPath),
        releaseDate = Value(releaseDate),
        title = Value(title),
        video = Value(video),
        voteAverage = Value(voteAverage),
        voteCount = Value(voteCount);
  static Insertable<FavoriteMoviesData> custom({
    Expression<int>? id,
    Expression<bool>? adult,
    Expression<String>? originalTitle,
    Expression<String>? backdropPath,
    Expression<String>? genreIds,
    Expression<String>? originalLanguage,
    Expression<String>? overview,
    Expression<double>? popularity,
    Expression<String>? posterPath,
    Expression<String>? releaseDate,
    Expression<String>? title,
    Expression<bool>? video,
    Expression<double>? voteAverage,
    Expression<int>? voteCount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (adult != null) 'adult': adult,
      if (originalTitle != null) 'original_title': originalTitle,
      if (backdropPath != null) 'backdrop_path': backdropPath,
      if (genreIds != null) 'genre_ids': genreIds,
      if (originalLanguage != null) 'original_language': originalLanguage,
      if (overview != null) 'overview': overview,
      if (popularity != null) 'popularity': popularity,
      if (posterPath != null) 'poster_path': posterPath,
      if (releaseDate != null) 'release_date': releaseDate,
      if (title != null) 'title': title,
      if (video != null) 'video': video,
      if (voteAverage != null) 'vote_average': voteAverage,
      if (voteCount != null) 'vote_count': voteCount,
    });
  }

  FavoriteMoviesCompanion copyWith(
      {Value<int>? id,
      Value<bool>? adult,
      Value<String>? originalTitle,
      Value<String>? backdropPath,
      Value<String>? genreIds,
      Value<String>? originalLanguage,
      Value<String>? overview,
      Value<double>? popularity,
      Value<String>? posterPath,
      Value<String>? releaseDate,
      Value<String>? title,
      Value<bool>? video,
      Value<double>? voteAverage,
      Value<int>? voteCount}) {
    return FavoriteMoviesCompanion(
      id: id ?? this.id,
      adult: adult ?? this.adult,
      originalTitle: originalTitle ?? this.originalTitle,
      backdropPath: backdropPath ?? this.backdropPath,
      genreIds: genreIds ?? this.genreIds,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (adult.present) {
      map['adult'] = Variable<bool>(adult.value);
    }
    if (originalTitle.present) {
      map['original_title'] = Variable<String>(originalTitle.value);
    }
    if (backdropPath.present) {
      map['backdrop_path'] = Variable<String>(backdropPath.value);
    }
    if (genreIds.present) {
      map['genre_ids'] = Variable<String>(genreIds.value);
    }
    if (originalLanguage.present) {
      map['original_language'] = Variable<String>(originalLanguage.value);
    }
    if (overview.present) {
      map['overview'] = Variable<String>(overview.value);
    }
    if (popularity.present) {
      map['popularity'] = Variable<double>(popularity.value);
    }
    if (posterPath.present) {
      map['poster_path'] = Variable<String>(posterPath.value);
    }
    if (releaseDate.present) {
      map['release_date'] = Variable<String>(releaseDate.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (video.present) {
      map['video'] = Variable<bool>(video.value);
    }
    if (voteAverage.present) {
      map['vote_average'] = Variable<double>(voteAverage.value);
    }
    if (voteCount.present) {
      map['vote_count'] = Variable<int>(voteCount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteMoviesCompanion(')
          ..write('id: $id, ')
          ..write('adult: $adult, ')
          ..write('originalTitle: $originalTitle, ')
          ..write('backdropPath: $backdropPath, ')
          ..write('genreIds: $genreIds, ')
          ..write('originalLanguage: $originalLanguage, ')
          ..write('overview: $overview, ')
          ..write('popularity: $popularity, ')
          ..write('posterPath: $posterPath, ')
          ..write('releaseDate: $releaseDate, ')
          ..write('title: $title, ')
          ..write('video: $video, ')
          ..write('voteAverage: $voteAverage, ')
          ..write('voteCount: $voteCount')
          ..write(')'))
        .toString();
  }
}

class DatabaseAtV1 extends GeneratedDatabase {
  DatabaseAtV1(QueryExecutor e) : super(e);
  late final FavoriteMovies favoriteMovies = FavoriteMovies(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favoriteMovies];
  @override
  int get schemaVersion => 1;
}
