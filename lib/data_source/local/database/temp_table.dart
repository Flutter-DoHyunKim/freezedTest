import 'package:drift/drift.dart';

// assuming that your file is called filename.dart. This will give an error at
// first, but it's needed for drift to know about the generated code


// this will generate a table called "todos" for us. The rows of that table will
// be represented by a class called "Todo".
class FavoriteMovies extends Table {
  IntColumn get id => integer().autoIncrement()();

  BoolColumn get adult => boolean()();
  TextColumn get originalTitle => text()();
  TextColumn get backdropPath => text()();
  TextColumn get genreIds => text()(); //List column은 존재하지 않음 text로 수정 후 parsing ??
  TextColumn get originalLanguage => text()();
  TextColumn get overview => text()();
  RealColumn get popularity => real()();
  TextColumn get posterPath => text()();
  TextColumn get releaseDate => text()();
  TextColumn get title => text()();
  BoolColumn get video => boolean()();
  RealColumn get voteAverage => real()();
  IntColumn get voteCount => integer()();
  //TextColumn get content => text().named('body')();
}
/*
// This will make drift generate a class called "Category" to represent a row in
// this table. By default, "Categorie" would have been used because it only
//strips away the trailing "s" in the table name.
@DataClassName('Category')
class Categories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
}*/

// this annotation tells drift to prepare a database class that uses both of the
// tables we just defined. We'll see how to use that database class in a moment.

/*
@DriftDatabase(tables: [Todos])
class ExampleDatabase extends _$ExampleDatabase {
  @override
  // TODO: implement schemaVersion
  int get schemaVersion => throw UnimplementedError();
}*/