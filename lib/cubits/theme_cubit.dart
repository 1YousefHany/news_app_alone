import 'package:bloc/bloc.dart';
import 'package:news_app_alone/helper/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'Theme_State.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(LightThemeState());

  bool isLight = true;

  loadTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLight = prefs.getBool(kThemePrefsKey) ?? true;

    emit(isLight ? LightThemeState() : DarkThemeState());
  }

  toggleTheme() async {
    isLight = !isLight;

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(kThemePrefsKey, isLight);

    emit(isLight ? LightThemeState() : DarkThemeState());
  }
}
