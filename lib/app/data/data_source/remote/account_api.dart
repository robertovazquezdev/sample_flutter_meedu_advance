import 'package:flutter/foundation.dart';
import 'package:sample_flutter_meedu_advance/app/data/data_source/local/authentication_client.dart';
import 'package:sample_flutter_meedu_advance/app/data/helpers/http.dart';
import 'package:sample_flutter_meedu_advance/app/domain/models/user.dart';
import 'package:sample_flutter_meedu_advance/app/domain/responses/users_per_page_response.dart';

class AccountAPI {
  final Http _http;
  final AuthenticationClient _authClient;

  AccountAPI(this._http, this._authClient);

  Future<User?> getUser() async {
    /*lo del token aqui es solo un ejemplo
    de implementacion si nuestra api requiere token
    ya que esta api usada no lo requiere
    */
    final accessToken = await _authClient.accessToken;
    final result = await _http.request(
      '/api/users/2',
      headers: {
        'token': accessToken ?? '',
      },
      parser: (data) {
        return User.fromJson(data['data']);
      },
    );

    return result.data;
  }

  Future<UsersPerPage?> getUsersPerPage(int page) async {
    final result = await _http.request<UsersPerPage>(
      '/api/users',
      queryParameters: {
        'page': '$page',
      },
      parser: (json) {
        return UsersPerPage.fromJson(json);
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

    return result.data;
  }
}
