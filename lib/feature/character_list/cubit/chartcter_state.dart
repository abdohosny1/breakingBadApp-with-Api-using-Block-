part of 'chartcter_cubit.dart';

@immutable
abstract class ChartcterState {}

class ChartcterInitial extends ChartcterState {}

class ChartcterLoaded extends ChartcterState {
  final List<Character> character;

  ChartcterLoaded(this.character);
}


