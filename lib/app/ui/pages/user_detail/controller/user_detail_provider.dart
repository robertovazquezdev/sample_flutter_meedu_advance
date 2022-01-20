import 'package:flutter_meedu/meedu.dart';
import 'package:sample_flutter_meedu_advance/app/domain/models/user.dart';
import 'user_detail_controller.dart';
import 'package:flutter_meedu/router.dart' as router;

final userDetailProvider = SimpleProvider(
  (_) => UserDetailController(router.arguments as User),
);
