import 'package:drift/drift.dart';
import 'package:freezed_testing/data_source/local/database/database.dart';
import 'package:freezed_testing/data_source/local/database/temp_table.dart';

part 'movies_dao.g.dart';

// the _TodosDaoMixin will be created by drift. It contains all the necessary
// fields for the tables. The <MyDatabase> type annotation is the database class
// that should use this dao.
@DriftAccessor(tables: [FavoriteMovies])
class FavoriteMovieDao extends DatabaseAccessor<ExampleDatabase> with _$FavoriteMovieDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  FavoriteMovieDao(ExampleDatabase db) : super(db);



  Future<int> addEntry(FavoriteMoviesCompanion entry){

    return into(favoriteMovies).insert(entry);
  }
  Future<List<FavoriteMovie>> allShowEntries(){
    return select(favoriteMovies).get();

  }
  Future<bool> updateEntry(FavoriteMoviesCompanion entry) {
    return  update(favoriteMovies).replace(entry);
  }
  Future<void> delEntry(int id){
    return delete(favoriteMovies).delete(FavoriteMoviesCompanion(id: Value(id)));
  }
}