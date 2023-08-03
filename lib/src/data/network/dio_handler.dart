import 'dart:async';
import 'dart:io';

import 'package:choppi_test/src/data/network/failure_handler.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioHandler {
  final Dio dio = Dio();
  final String basePath = dotenv.get('API_BASE_PATH');

  Future<Map<String, String>> _getHeaders() async {
    final headers = <String, String>{
      'Content-Type': 'application/json;charset=utf-8',
    };
    headers['Accept-Language'] = Platform.localeName.split('-')[0];
    return headers;
  }

  Future<Response<dynamic>> get(String url) async {
    try {
      Response<dynamic> response;
      final headers = await _getHeaders();
      response = await dio
          // ignore: inference_failure_on_function_invocation
          .get(
            basePath + url,
            options: Options(headers: headers),
          )
          .timeout(
            const Duration(seconds: 20),
            onTimeout: () => throw TimeoutException('Connection timed out'),
          );

      if (response.statusCode == 401) {
        throw Failure(response.statusMessage, response.statusCode);
      } else if (response.statusCode != 200 && response.statusCode != 201) {
        throw Failure(response.statusMessage, response.statusCode);
      }

      return response;
    } on SocketException {
      throw Failure('EXCEPTIONS.NOT_INTERNET', 408);
    } on DioException {
      throw Failure('EXCEPTIONS.NOT_FOUND', 500);
    } on FormatException {
      throw Failure('EXCEPTIONS.INVALID_JSON', 500);
    } on Failure {
      rethrow;
    } catch (e) {
      throw Failure('EXCEPTIONS.UNKNOWN', 500);
    }
  }
}
