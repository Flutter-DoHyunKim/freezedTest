import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freezed_testing/models/movie_model.dart';
import 'package:freezed_testing/services/popular_movie_service.dart';

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
        title: const Text("TEST Movie API"),
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
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://image.tmdb.org/t/p/original${movieModel.results[index].backdropPath}'),
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.low,opacity: 0.5),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    child: Text(
                                        movieModel.results[index].originalTitle,style: const TextStyle(fontWeight: FontWeight.w700),)),
                                const Expanded(child: SizedBox()),
                                Container(
                                  padding: EdgeInsets.zero,
                                  margin: EdgeInsets.zero,
                                  constraints:
                                      const BoxConstraints(maxWidth: 200),
                                  height: 300,

                                  child: CachedNetworkImage(
                                    imageUrl:'https://image.tmdb.org/t/p/original${movieModel.results[index].posterPath}',
                                    fadeInDuration: const Duration(milliseconds: 100),
                                    fadeOutDuration: const Duration(milliseconds: 100),
                                    memCacheHeight: 300,
                                    memCacheWidth: 300,
                                    placeholder: (context, url) => const Center(child:  SizedBox(width:30,height:30,child:  CircularProgressIndicator())),
                                    errorWidget: (context, url, error) => const Icon(Icons.error),
                                  ),
                                ),
                              ],
                            ),
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
    }
    else if (movieModel.results != []) {
      _clicked = true;
    } else {
      _clicked = false;
    }
    setState(() {});
  }
}
