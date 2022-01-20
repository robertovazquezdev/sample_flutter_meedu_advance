import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:sample_flutter_meedu_advance/app/data/helpers/http.dart';
import 'package:sample_flutter_meedu_advance/app/data/helpers/http_method.dart';
import 'package:sample_flutter_meedu_advance/app/domain/responses/login_response.dart';
import 'package:tuple/tuple.dart';

class AuthenticationAPI {
  final Http _http;

  AuthenticationAPI(this._http);
  Future<Tuple2<LoginResponse, String?>> login(
      String email, String password) async {
    final result = await _http.request<String>(
      '/api/login',
      // queryParameters: {
      //   'delay': '5',
      // },
      method: HttpMethod.post,
      body: {
        "email": email,
        "password": password,
      },
      parser: (data) {
        return data['token'];
      },
    );

    if (kDebugMode) {
      print('result data ${result.data}');
      print('result data runtimeType ${result.data.runtimeType}');
      print('result error data ${result.error?.data}');
      print('result error exception ${result.error?.exception}');
      print('result error stacktrace ${result.error?.stackTrace}');
      print('result status code ${result.statusCode}');
    }

    if (result.error == null) {
      return Tuple2(LoginResponse.ok, result.data);
    }

    if (result.statusCode == 400) {
      return const Tuple2(LoginResponse.accessDenied, null);
    }

    final error = result.error!.exception;

    if (error is SocketException || error is TimeoutException) {
      return const Tuple2(LoginResponse.networkError, null);
    }

    return const Tuple2(LoginResponse.unknownError, null);
  }
}
