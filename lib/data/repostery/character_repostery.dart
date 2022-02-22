import '../model/characters_model.dart';
import '../model/quotes.dart';
import '../web_servic/characrer_web_servic.dart';

class CharacterRepository {
  final CharacterswebServices characterswebServices;

  CharacterRepository(this.characterswebServices);

  Future<List<Character>> getAllCgaracter() async {
    final character = await characterswebServices.getAllCgaracter();

    return character.map((e) => Character.fromJson(e)).toList();
  }

  //   Future<List<Quotes>> getQuoteCharacter(String characterName) async {
  //   final quote = await characterswebServices.getQuoteCharacter(characterName);

  //   return quote.map((e) => Quotes.fromJson(e)).toList();
  // }
}
