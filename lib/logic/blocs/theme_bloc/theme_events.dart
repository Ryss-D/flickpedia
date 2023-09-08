part of 'theme_bloc.dart';

sealed class ThemeEvent{}

final class ToogleDark extends ThemeEvent{}
final class ToogleLight extends ThemeEvent{}