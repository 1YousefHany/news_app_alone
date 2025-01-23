import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:news_app_alone/helper/network_exception.dart';
import 'package:news_app_alone/models/article_model.dart';
import 'package:news_app_alone/services/news_service.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());

  fetchNews() async {
    emit(GetNewsLoading());
    try {
      List<ArticleModel> articles = await NewsService(Dio()).getTopHeadLines();
      emit(GetNewsSuccess(articles));
    } on NetWorkException catch (e) {
      handleFailureStates(e);
    } catch (e) {
      emit(GetNewsFailureState(e.toString()));
    }
  }
  void handleFailureStates(e) {
    if (e is NetWorkException) {
      switch (e.type) {
        case DioExceptionType.connectionError:
        case DioExceptionType.connectionTimeout :
        case DioExceptionType.sendTimeout :
          emit(GetNewsNetWorkFailure(e.toString()));
          break;

        case DioExceptionType.badResponse:
          emit(GetNewsServerFailure(e.toString()));
          break;

        case DioExceptionType.receiveTimeout:
          emit(GetNewsTimeOutFailure(e.toString()));

        default:
          emit(GetNewsFailureState(e.toString()));
      }
    }
  }
}