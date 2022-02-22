import 'package:breakingbad_api_with_block/data/web_servic/quotoes_wab_service.dart';

import '../model/quotes.dart';

class QuotoRepository {
  final QutoeswebServices qutoeswebServices;

  QuotoRepository(this.qutoeswebServices);

  Future<List<Quotes>> getQuoteCharacter(String characterName) async {
    final quote = await qutoeswebServices.getQuoteCharacter(characterName);

    return quote.map((e) => Quotes.fromJson(e)).toList();
  }
}
