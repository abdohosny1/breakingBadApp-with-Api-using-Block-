import 'package:bloc/bloc.dart';
import '../../../data/model/quotes.dart';
import '../../../data/repostery/quote_repository.dart';
import 'package:meta/meta.dart';

part 'character_details_state.dart';

class CharacterDetailsCubit extends Cubit<CharacterDetailsState> {
  late QuotoRepository quotoRepository;
  List<Quotes> quotes = [];

  CharacterDetailsCubit(this.quotoRepository)
      : super(CharacterDetailsInitial());

  void getAllQuotesLoaded(String charName) {
    quotoRepository.getQuoteCharacter(charName).then((quotes) {
      emit(QuotesLoaded(quotes));
    });
  }
}
