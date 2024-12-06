import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app_alone/models/article_model.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());
}
