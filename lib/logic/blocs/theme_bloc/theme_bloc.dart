import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';
part 'theme_events.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.lightTheme){
    on<ToogleDark>((event, emit){
      emit(ThemeState.darkTheme);
    });
    on<ToogleLight>((event, emit){
      emit(ThemeState.darkTheme);
    });
  }


}