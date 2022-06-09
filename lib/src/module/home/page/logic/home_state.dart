part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  const HomeSuccess(this.posts);

  final List<Post> posts;
  @override
  List<Object> get props => [posts];
}

class HomeError extends HomeState {
  const HomeError(this.exception);

  final Exception exception;

  @override
  List<Object> get props => [exception];
}
