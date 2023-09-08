part of 'navigation_cubit.dart';

abstract class RateState {}

//class InternetLoading extends InternetState {}

class PersonalRate extends RateState{
  final int rate;

  PersonalRate({required this.rate});
}
class DefaultRate extends RateState{
  DefaultRate();
}
