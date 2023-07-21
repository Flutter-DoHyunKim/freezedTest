import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_testing/data_source/network/client.dart';
import 'package:freezed_testing/data_source/network/popular_movie_provider.dart';
import 'package:freezed_testing/services/repository.dart';
import 'package:freezed_testing/testing_screen.dart';
import 'package:provider/provider.dart';
void main() async{
  await dotenv.load(fileName: 'lib/assets/config/.env');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MovieRepositoryType repositoryType = PopularMovieService(APIConst.makeDio());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: PopularMovieProvider(repositoryType))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Center(child: const TestingScreen()),
      ),
    );
  }
}


