import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_testing/data_source/network/client.dart';
import 'package:freezed_testing/services/repository.dart';

final repositoryProvider = Provider<MovieRepositoryType>(
    (ref) => PopularMovieService(APIConst.makeDio()));

//respository 관련 provider 를 따로 빼서 제작. APIConst를 가져온다.
