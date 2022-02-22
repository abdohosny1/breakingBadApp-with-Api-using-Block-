import 'package:breakingbad_api_with_block/feature/character_list/data/web_service/characrer_web_servic.dart';

import '../../../../cort/model/characters_model.dart';

class CharacterRepository {
  final CharacterswebServices characterswebServices;

  CharacterRepository(this.characterswebServices);

  Future<List<Character>> getAllCgaracter() async {
    final character = await characterswebServices.getAllCgaracter();

    return character.map((e) => Character.fromJson(e)).toList();
  }
}
