import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sample_flutter_meedu_advance/app/data/data_source/local/authentication_client.dart';
import 'package:sample_flutter_meedu_advance/app/data/data_source/remote/authentication_api.dart';
import 'package:sample_flutter_meedu_advance/app/domain/repositories/authentication_repository.dart';
import 'package:sample_flutter_meedu_advance/app/domain/responses/login_response.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationAPI _api;
  final AuthenticationClient _authClient;

  AuthenticationRepositoryImpl(this._api, this._authClient) {
    if (kDebugMode) {
      print(':::Instancia de AuthenticationRepositoryImpl creada:::');
    }
  }
  @override
  Future<String?> get accessToken async {
    return await _authClient.accessToken;
  }

  @override
  Future<LoginResponse> login(String email, String password) async {
    final result = await _api.login(email, password);
    if (result.item1 == LoginResponse.ok) {
      await _authClient.saveToken(result.item2!);
    }
    return result.item1;
  }

  @override
  Future<void> logout() {
    return _authClient.clearData();
  }
}
