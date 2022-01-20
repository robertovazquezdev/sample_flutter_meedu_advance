import 'package:flutter/foundation.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:sample_flutter_meedu_advance/app/domain/models/user.dart';

class UserDetailController extends SimpleNotifier {
  final User user;

  UserDetailController(this.user) {
    if (kDebugMode) {
      print('::::Instancia creada de UserDetailController::::');
    }
  }

  @override
  void dispose() {
    if (kDebugMode) {
      print('::::Instancia eliminada de UserDetailController::::');
    }
    super.dispose();
  }
}
