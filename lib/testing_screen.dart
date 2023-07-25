import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_testing/blocs/dialog_bloc.dart';
import 'package:freezed_testing/blocs/test_bloc.dart';
import 'package:freezed_testing/data_source/network/get_state.dart';
import 'package:freezed_testing/models/movie_model.dart';
import 'package:get/get.dart';

class TestingScreen extends StatefulWidget {
  const TestingScreen({super.key});

  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {
  final controller = Get.find<GetMovieController>();
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  // List<ResultMovieModel> movieModel = [];
  int _page = 1;

  @override
  void initState() {
    // TODO: implement initState
    _scrollController.addListener(_scrollListener);

    super.initState();
  }

  void _scrollListener() async {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      // 스크롤 끝에 오면
      if (!_isLoading) {
        _isLoading = true;

        _loadMovieMethod().then((value) {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _loadMovieMethod() async {
    if (_page < 2) {
      _page++;
      controller.loadMovieList(_page);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    controller.dispose();
    super.dispose();
  }

  void _showDialog() {
    Get.dialog(
      AlertDialog(
        // 팝업창 크기 조절이 안됨
        insetPadding: EdgeInsets.zero,
        titlePadding: const EdgeInsets.only(top: 40, bottom: 15),
        contentPadding: const EdgeInsets.only(bottom: 40),
        actionsPadding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
        title: const Text(
          "API 호출하기",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff1f1f1f),
            fontSize: 18,
            fontFamily: "Pretendard",
            fontWeight: FontWeight.w600,
          ),
        ),
        content: const Opacity(
          opacity: 0.70,
          child: Text(
            "버튼을 클릭하세요",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff1f1f1f),
              fontSize: 14,
            ),
          ),
        ),
        actions: [
          Container(
            width: 150,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xfff1eeef),
            ),
            child: TextButton(
              onPressed: () {
                /*if (_theme) {
                  Get.changeTheme(ThemeData.light());
                  _theme = false;
                } else {
                  Get.changeTheme(ThemeData.dark());
                  _theme = true;
                }*/
                context.read<TestBloc>().add(ThemeChangedEvent());
                if (context.read<TestBloc>().state.status2 == Status2.dark) {
                  Get.changeTheme(ThemeData.light());
                } else {
                  Get.changeTheme(ThemeData.dark());
                }
                Get.back();
              },
              child: const Text(
                "테마 바꾸기",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff1f1f1f),
                  fontSize: 16,
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            width: 150,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xfff63c6e),
            ),
            child: TextButton(
                onPressed: () async {
                  // controller.loadMovieList(_page);
                  context.read<TestBloc>().add(MovieLoadEvent(_page));
                  Get.back();
                },
                child: const Text(
                  "호출",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Pretendard",
                    fontWeight: FontWeight.w600,
                  ),
                )),
          ),
        ],
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        elevation: 50,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ///watch는 전체 적인 부분, select 은 특정한 부분만 추적 해서 사용. 리빌드를 줄인다!!

    /*   List<ResultMovieModel> movieModel =
        context.select<PopularMovieProvider, List<ResultMovieModel>>(
            (movieProvider) => movieProvider.movieList);
    context.select<PopularMovieProvider, int>(
            (movieProvider) => movieProvider.temp);*/

    //  print(movieModel.length);

    return blocC();
  }

  Scaffold getX() {
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
              onTap: (){
              //  context.read<DialogBloc>().add(PopDialogEvent());
              },
              //Get.snackbar('hi','message'); 이렇게 하면 notification 처럼 snackbar 나옴
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
                child: const Center(child: Text('버튼을 눌러보세요')),
              )),
          const SizedBox(
            height: 12,
          ),
          Obx(() {
            final List<ResultMovieModel> movieModel = controller
                .movieList; //value를 사용하면 Rx내 List에 직접 접근하는 방식으로 가장 최근의 값을 가져온다, 여기서는 RxList라 value 없어도 됨.
            return Expanded(
                child: movieModel.isNotEmpty
                    ? ListView.separated(
                        controller: _scrollController,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/original${movieModel[index].backdropPath}'),
                                    fit: BoxFit.cover,
                                    filterQuality: FilterQuality.low,
                                    opacity: 0.5),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 100,
                                      child: Text(
                                        movieModel[index].originalTitle,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w700),
                                      )),
                                  const Expanded(child: SizedBox()),
                                  Container(
                                    padding: EdgeInsets.zero,
                                    margin: EdgeInsets.zero,
                                    constraints:
                                        const BoxConstraints(maxWidth: 200),
                                    height: 300,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          'https://image.tmdb.org/t/p/original${movieModel[index].posterPath}',
                                      fadeInDuration:
                                          const Duration(milliseconds: 100),
                                      fadeOutDuration:
                                          const Duration(milliseconds: 100),
                                      memCacheHeight: 300,
                                      memCacheWidth: 300,
                                      placeholder: (context, url) => const Center(
                                          child: SizedBox(
                                              width: 30,
                                              height: 30,
                                              child:
                                                  CircularProgressIndicator())),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
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
                        itemCount: movieModel.length)
                    : const SizedBox(width: 100, child: Text('empty!!')));
          }),
        ]),
      ),
    );
  }

  Scaffold blocC() {
    final List<ResultMovieModel>? movieModel =
        context.watch<TestBloc>().state.movieModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text("TEST Movie API"),
      ),
      body: BlocListener<DialogBloc, DialogState>(
  listener: (context, state) {
    // TODO: implement listener
    if(state.count%2==1)
  {  _showDialog();}
  },
  child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 50,
          ),
          InkWell(
              onTap: (){
        context.read<DialogBloc>().add(PopDialogEvent());
  },
              //Get.snackbar('hi','message'); 이렇게 하면 notification 처럼 snackbar 나옴
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
                child: const Center(child: Text('버튼을 두 번 눌러보세요')),
              )),
          const SizedBox(
            height: 12,
          ),
          Expanded(
              child: movieModel != null
                  ? ListView.separated(
                      controller: _scrollController,
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://image.tmdb.org/t/p/original${movieModel[index].backdropPath}'),
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.low,
                                  opacity: 0.5),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 100,
                                    child: Text(
                                      movieModel[index].originalTitle,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )),
                                const Expanded(child: SizedBox()),
                                Container(
                                  padding: EdgeInsets.zero,
                                  margin: EdgeInsets.zero,
                                  constraints:
                                      const BoxConstraints(maxWidth: 200),
                                  height: 300,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://image.tmdb.org/t/p/original${movieModel[index].posterPath}',
                                    fadeInDuration:
                                        const Duration(milliseconds: 100),
                                    fadeOutDuration:
                                        const Duration(milliseconds: 100),
                                    memCacheHeight: 300,
                                    memCacheWidth: 300,
                                    placeholder: (context, url) => const Center(
                                        child: SizedBox(
                                            width: 30,
                                            height: 30,
                                            child:
                                                CircularProgressIndicator())),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
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
                      itemCount: movieModel.length)
                  : const SizedBox(width: 100, child: Text('empty!!')))
        ]),
      ),
),
    );
  }

/*void _tapped() {
    Get.to(_showDialog());


    //context.read<PopularMovieProvider>().loadMovieList(_page);
    /*await Provider.of<PopularMovieProvider>(context, listen: false)
        .loadMovieList(_page);*/
  }*/
}
