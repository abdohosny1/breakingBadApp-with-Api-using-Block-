part of 'character_details_cubit.dart';

@immutable
abstract class CharacterDetailsState {}

class CharacterDetailsInitial extends CharacterDetailsState {}

class QuotesLoaded extends CharacterDetailsState {
  final List<Quotes> quotes;

  QuotesLoaded(this.quotes);
}
