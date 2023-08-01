import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_testing/data_source/local/database/movies_dao.dart';
import 'package:freezed_testing/provider/db_provider.dart';

final movieDaoProvider=Provider<FavoriteMovieDao>((ref)=>FavoriteMovieDao(ref.watch(dbProvider)));