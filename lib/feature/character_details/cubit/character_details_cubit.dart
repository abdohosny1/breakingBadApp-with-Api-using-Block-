import 'package:bloc/bloc.dart';
import '../../../cort/model/quotes.dart';
import '../data/repository/quote_repository.dart';
import 'package:meta/meta.dart';

part 'character_details_state.dart';

class CharacterDetailsCubit extends Cubit<CharacterDetailsState> {
  late QuotoRepository quotoRepository;
  List<Quotes> quotess = [];

  CharacterDetailsCubit(this.quotoRepository)
      : super(CharacterDetailsInitial());

  void getAllQuotesLoaded(String charName) {
    quotoRepository.getQuoteCharacter(charName).then((quotes) {
      emit(QuotesLoaded(quotes));
    });
  }
}
