import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_testing/data_source/network/client.dart';
import 'package:freezed_testing/services/repository.dart';

final repositoryProvider = Provider<MovieRepositoryType>(
    (ref) => PopularMovieService(APIConst.makeDio()));

