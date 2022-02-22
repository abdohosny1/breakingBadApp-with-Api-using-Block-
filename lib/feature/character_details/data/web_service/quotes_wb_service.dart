import '../../../../constant/string.dart';

import 'package:dio/dio.dart';

class QutoeswebServices {
  late Dio dio;

  QutoeswebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000, // 69 seconds,
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getQuoteCharacter(String characterName) async {
    try {
      final response =
          await dio.get('quote', queryParameters: {'author': characterName});
      print(response.data.toString());
      return response.data as List;
    } on DioError catch (e) {
      print(e.message);
      return [];
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
