import 'package:bloc/bloc.dart';

part 'Theme_State.dart';

class ThemeCubit extends Cubit <ThemeState> {
  ThemeCubit() : super(LightThemeState());

    bool isLight = true;
   toggleTheme() {
    isLight ? emit(DarkThemeState()) : emit(LightThemeState());
  }
}