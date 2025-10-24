import 'dart:developer';

import 'package:bmi_app/models/bmi_model.dart';
import 'package:dio/dio.dart';

class BmiService {
  Future<BmiModel> getBmi({
    required String height,
    required String weight,
  }) async {
    Dio dio = Dio();
    Response response = await dio.get(
      'https://api.apiverve.com/v1/bmicalculator?weight=$weight&height=$height&unit=metric',
      options: Options(
        headers: {
          "X-API-Key": "d9a94f53-a602-475c-96e5-9ecb51c6bc82",
          "Accept": "application/json",
        },
      ),
    );
    var data = BmiModel.fromJson(response.data);
    return data;
  }
}
