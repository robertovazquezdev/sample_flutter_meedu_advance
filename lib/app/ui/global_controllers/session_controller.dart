import 'package:flutter_meedu/meedu.dart';
import 'package:sample_flutter_meedu_advance/app/domain/models/user.dart';

class SessionController extends SimpleNotifier {
  User? _user;
  User? get user => _user;

  void setUser(User user) {
    _user = user;
    notify();
  }

  void signOut() {
    _user = null;
    //notify();
  }
}

final sessionProvider =
    SimpleProvider((_) => SessionController(), autoDispose: false);
