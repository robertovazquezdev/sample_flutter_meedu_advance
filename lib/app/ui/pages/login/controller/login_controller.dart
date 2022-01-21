import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:sample_flutter_meedu_advance/app/domain/repositories/account_repository.dart';
import 'package:sample_flutter_meedu_advance/app/domain/repositories/authentication_repository.dart';
import 'package:sample_flutter_meedu_advance/app/domain/responses/login_response.dart';
import 'package:sample_flutter_meedu_advance/app/ui/global_controllers/session_controller.dart';

class LoginController extends SimpleNotifier {
  LoginController(this._sessionController) {
    if (kDebugMode) {
      print('::::Instancia creada de LoginController::::');
    }
  }

  final GlobalKey<FormState> formKey = GlobalKey();
  final AuthenticationRepository _auth = Get.i.find();
  final AccountRepository _account = Get.i.find();
  final SessionController _sessionController;
  String _email = '', _password = '';

  void onEmailChanged(String text) {
    _email = text;
  }

  void onPasswordChanged(String text) {
    _password = text;
  }

  Future<LoginResponse> submit() async {
    final response = await _auth.login(_email, _password);
    if (response == LoginResponse.ok) {
      final user = await _account.user;
      if (user != null) {
        _sessionController.setUser(user);
      } else {
        return LoginResponse.unknownError;
      }
    }
    return response;
  }

  @override
  void dispose() {
    if (kDebugMode) {
      print('::::Instancia eliminada de LoginController::::');
    }
    super.dispose();
  }
}
