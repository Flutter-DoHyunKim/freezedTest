import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_testing/data_source/local/database/todos_dao.dart';
import 'package:freezed_testing/provider/db_provider.dart';

final todoDaoProvider=Provider<TodosDao>((ref)=>TodosDao(ref.watch(dbProvider)));