import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:st_bloc_cubit_getit_dartz_api/src/module/home/home.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.repo) : super(HomeLoading());

  final HomeRepository repo;

  Future<void> fetchData() async {
    final res = await repo.getPosts();

    res.fold((l) => emit(HomeError(l)), (r) => emit(HomeSuccess(r)));
  }
}
