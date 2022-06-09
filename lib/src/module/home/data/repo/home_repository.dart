import 'package:dartz/dartz.dart';
import 'package:http_service1/http_service1.dart';
import 'package:st_bloc_cubit_getit_dartz_api/src/module/home/home.dart';

abstract class HomeRepository {
  Future<Either<Exception, List<Post>>> getPosts();
  Future<Either<Exception, Post>> getPost(String id);
}

class HomeRepoImpl implements HomeRepository {
  HomeRepoImpl(this.service);

  final HttpService service;

  @override
  Future<Either<Exception, List<Post>>> getPosts() async {
    final res = service.get<List<Post>>('', fromJson: postFromJson);
    return res;
  }

  @override
  Future<Either<Exception, Post>> getPost(String id) {
    throw UnimplementedError();
  }
}
