import 'package:boxigo_assignment/model/customer_estimate_flow.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class LogisticRepository {
  late InventryWebResponse _inventryWebResponse;

  InventryWebResponse get getInventryResponse => _inventryWebResponse;

  fetchInventryResponse() async {
    BaseOptions baseOptions = BaseOptions(baseUrl: 'http://test.api.boxigo.in');

    try {
      Dio dio = Dio(baseOptions);
      var response = await dio.get('/sample-data/');
      switch (response.statusCode) {
        case 200:
          _inventryWebResponse = InventryWebResponse.fromJson(response.data);
        default:
          throw Exception('${response.statusCode} ${response.data}');
      }
    } catch (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack);
    }
  }
}
