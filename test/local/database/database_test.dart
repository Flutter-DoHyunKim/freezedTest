import 'package:drift/drift.dart';
import 'package:drift_dev/api/migrations.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_testing/data_source/local/database/database.dart';

import '../generated_migrations/schema.dart';
import '../generated_migrations/schema_v1.dart'as v1;
import '../generated_migrations/schema_v2.dart'as v2;


void main() {
  late SchemaVerifier verifier;
  final Faker faker = Faker();
  const int latestSchemaVersion = 2;
  setUpAll(() {
    verifier = SchemaVerifier(GeneratedHelper()); //가장 초기 세팅을 한다
  });

  group('db 테스트 진행합니다', () {
    test('v1 -> 최신버젼 업데이트', () async {
      final connection = await verifier.startAt(1);
      final db = ExampleDatabase.withConnection(connection); //이전 버젼을 가져 온다
      addTearDown(() async { //db 연결 끊기
        await db.close();
      });
      await verifier.migrateAndValidate(db, latestSchemaVersion,
          validateDropped: true); //최신버젼과 이전버젼간의 validate 확인한다
    });

    test('무결성 테스트 v1 to latest', () async{


      final favoriteMovie = v1.FavoriteMoviesCompanion(
          id: Value(1),
          adult: Value(faker.randomGenerator.boolean()),
          originalTitle: Value(faker.person.name()),
          backdropPath:Value (faker.internet.httpsUrl()),
          genreIds: Value(faker.person.name()),
          originalLanguage: Value(faker.person.name()),
          overview: Value(faker.person.name()),
          popularity: Value (faker.randomGenerator.decimal()),
          posterPath: Value (faker.internet.httpsUrl()),
          releaseDate: Value (faker.date.toString()),
          title: Value (faker.person.name()),
          video: Value (faker.randomGenerator.boolean()),
          voteAverage:Value  (faker.randomGenerator.decimal()),
          voteCount: Value (faker.randomGenerator.integer(10000)),
      );

     final connection = await verifier.startAt(1);
     final oldDb = ExampleDatabase.withConnection(connection); //이전 버젼을 가져 온다
   // await oldDb.into(oldDb.favoriteMovies).insert(v1.FavoriteMoviesCompanion(id:Value(1)));
    });

  });

}

/*
  test('upgrade from v1 to v2', () async {
    final schema = await verifier.schemaAt(1);

    // Add some data to the users table, which only has an id column at v1
    final oldDb = v1.DatabaseAtV1.connect(schema.newConnection());
    await oldDb.into(oldDb.users).insert(const v1.UsersCompanion(id: Value(1)));
    await oldDb.close();

    // Run the migration and verify that it adds the name column.
    final db = Database(schema.newConnection());
    await verifier.migrateAndValidate(db, 2);
    await db.close();

    // Make sure the user is still here
    final migratedDb = v2.DatabaseAtV2.connect(schema.newConnection());
    final user = await migratedDb.select(migratedDb.users).getSingle();
    expect(user.id, 1);
    expect(user.name, 'no name'); // default from the migration
    await migratedDb.close();
  });
  */
