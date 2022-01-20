import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:sample_flutter_meedu_advance/app/ui/global_controllers/session_controller.dart';
import 'package:sample_flutter_meedu_advance/app/ui/pages/splash/controller/splash_controller.dart';
import 'package:sample_flutter_meedu_advance/app/ui/routes/routes.dart';

void main() {
  test(
    'splash controller',
    () async {
      final controller = SplashController(
        SessionController(),
      );
      final c = Completer();
      controller.addListener(
        (_) {
          c.complete();
        },
      );

      await c.future;

      expect(controller.routeName, Routes.HOME);
    },
  );
}
