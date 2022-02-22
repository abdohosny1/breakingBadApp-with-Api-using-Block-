import '../../../../constant/string.dart';
import 'package:dio/dio.dart';

class CharacterswebServices {
  late Dio dio;

  CharacterswebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000, // 69 seconds,
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCgaracter() async {
    try {
      final response = await dio.get('characters');
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
