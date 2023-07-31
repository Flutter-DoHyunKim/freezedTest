import 'package:freezed_testing/data_source/local/database/database.dart';
import 'package:riverpod/riverpod.dart';

final dbProvider=Provider<ExampleDatabase>((ref)=>ExampleDatabase());