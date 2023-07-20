import 'package:flutter/material.dart';
import 'package:freezed_testing/models/movie_model.dart';
import 'package:freezed_testing/models/popular_movie_service.dart';

class TestingScreen extends StatefulWidget {
  const TestingScreen({super.key});

  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {
  bool _clicked = false;
  late MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("testing API"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 50,
          ),
          InkWell(
              onTap: _tapped,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
                child: const Center(child: Text('버튼을 눌러보세요')),
              )),
          const SizedBox(
            height: 12,
          ),
          Expanded(
              child: _clicked
                  ? ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 100,
                                  child: Text(
                                      movieModel.results[index].originalTitle)),
                              const Expanded(child: SizedBox()),
                              Container(
                                padding: EdgeInsets.zero,
                                margin: EdgeInsets.zero,
                                constraints:
                                    const BoxConstraints(maxWidth: 200),
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://image.tmdb.org/t/p/original${movieModel.results[index].posterPath}'),
                                      fit: BoxFit.cover,
                                      filterQuality: FilterQuality.low),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                      itemCount: movieModel.results.length)
                  : const SizedBox(width: 100, child: Text('empty!!'))),
        ]),
      ),
    );
  }

  void _tapped() async {
    movieModel = await PopularMovieService().getPopularMovieService();

    if (_clicked) {
      _clicked = false;
      setState(() {});
      return;
    }
    if (movieModel.results != []) {
      _clicked = true;
    } else {
      _clicked = false;
    }
    setState(() {});
  }
}
