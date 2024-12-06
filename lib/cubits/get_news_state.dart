part of 'get_news_cubit.dart';

@immutable
sealed class GetNewsState {}

final class GetNewsInitial extends GetNewsState {}

final class GetNewsLoading extends GetNewsState {}

final class GetNewsSuccess extends GetNewsState {
 final List<ArticleModel> news ;

  GetNewsSuccess(this.news);
}

final class GetNewsFailureState {
  final String errMessage ;

  GetNewsFailureState(this.errMessage);

}

final class GetNewsNetWorkFailure extends GetNewsState {

  final String errMessage ;

  GetNewsNetWorkFailure(this.errMessage);
}

final class GetNewsServerFailure extends GetNewsState {

  final String errMessage ;

  GetNewsServerFailure(this.errMessage);
}

final class GetNewsTimeOutFailure extends GetNewsState {

  final String errMessage ;

  GetNewsTimeOutFailure(this.errMessage);
}


