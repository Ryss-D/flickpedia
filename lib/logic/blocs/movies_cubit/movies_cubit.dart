import 'package:flutter_bloc/flutter_bloc.dart';

part 'movies_state.dart';

class RateCubit extends Cubit<RateState> {
  RateCubit() : super(DefaultRate());

  void giveRate(int rate) {
    emit(
      PersonalRate(rate: rate),
    );
  }
}
