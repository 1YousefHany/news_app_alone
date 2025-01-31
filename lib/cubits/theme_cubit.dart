import 'package:bloc/bloc.dart';

part 'Theme_State.dart';

class ThemeCubit extends Cubit <ThemeState> {
  ThemeCubit() : super(LightThemeState());

   late final bool isLight ;
  void toggleTheme() {
    isLight ? emit(DarkThemeState()) : emit(LightThemeState())  ;
  }
}