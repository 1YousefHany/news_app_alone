
import 'package:bloc/bloc.dart';

class SearchModeCubit extends Cubit<bool> {

  SearchModeCubit() : super(false);

  toggleSearchMode(){
    emit(!state);
  }
  closeSearchMode(){
  emit(false);
  }
}