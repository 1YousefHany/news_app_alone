import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:news_app_alone/models/article_model.dart';
import 'package:news_app_alone/services/news_service.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());

  fetchNews() async{
    emit(GetNewsLoading());

    try{
    List<ArticleModel> articles = await NewsService(Dio()).getTopHeadLines();
    emit(GetNewsSuccess(articles));
    }catch (e){
      handleFailureStates(e);
    }

  }

  void handleFailureStates(e) {
    if(e is DioException){
      switch (e.type){
        case DioExceptionType.connectionError:
        case DioExceptionType.connectionTimeout :
        case DioExceptionType.sendTimeout :
        emit(GetNewsNetWorkFailure(e.toString()));
        break ;

        case DioExceptionType.badResponse:
          emit(GetNewsServerFailure(e.toString()));
          break;

        case DioExceptionType.receiveTimeout:
          emit(GetNewsTimeOutFailure(e.toString()));

        default:
          emit(GetNewsFailureState(e.toString()));
      }

    }else {
      emit(GetNewsFailureState(e.toString()));
    }
  }
}
