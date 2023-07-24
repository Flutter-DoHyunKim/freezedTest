import 'package:freezed_testing/models/movie_model.dart';
import 'package:freezed_testing/services/repository.dart';
import 'package:get/get.dart';

class GetMovieController extends GetxController{
  //Rx는 stream 같은 느낌으로 생각하면 된다. 뭔가 계속 연결 되어 있음.
  RxList<ResultMovieModel> movieList=<ResultMovieModel>[].obs; //일반적으로 RxList를 사용할때는 이렇게 사용
  //Rx<List<ResultMovieModel>> movieList=Rx<List<ResultMovieModel>([])>; 위에랑 비슷하나 RxList가 아니기 때문에 addAll 같은 것에 제약!
  final MovieRepositoryType repositoryType;
  GetMovieController(this.repositoryType);
  @override
  void onInit() { //처음 실행시에
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onClose() { //controller 제거시에
    // TODO: implement onClose
    super.onClose();
  }
  Future<void> loadMovieList(int page) async { //movielist 받아오는 Method
    MovieModel? result = await repositoryType.getPopularMovie(page);
    movieList.addAll(result?.results??[]);
   // movieList(result?.results??[]); //이렇게하면 Rx 형태인 moviueList에 넣을 수 있다. 이때 addAll 느낌은 아님
    //movieList.value=result?.results??[];
  }
}