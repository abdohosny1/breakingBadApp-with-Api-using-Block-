import '../../../../cort/model/quotes.dart';
import '../web_service/quotes_wb_service.dart';

class QuotoRepository {
  final QutoeswebServices qutoeswebServices;

  QuotoRepository(this.qutoeswebServices);

  Future<List<Quotes>> getQuoteCharacter(String characterName) async {
    final quote = await qutoeswebServices.getQuoteCharacter(characterName);

    return quote.map((e) => Quotes.fromJson(e)).toList();
  }
}
