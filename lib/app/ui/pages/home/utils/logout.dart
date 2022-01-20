import 'package:flutter/cupertino.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:sample_flutter_meedu_advance/app/domain/repositories/authentication_repository.dart';
import 'package:sample_flutter_meedu_advance/app/ui/global_controllers/session_controller.dart';
import 'package:sample_flutter_meedu_advance/app/ui/global_widgets/dialogs/progress_dialog.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'package:sample_flutter_meedu_advance/app/ui/routes/routes.dart';

void logout(BuildContext context) async {
  ProgressDialog.show(context);
  final controller = sessionProvider.read;
  final AuthenticationRepository auth = Get.i.find();
  await auth.logout();
  controller.signOut();
  router.pushNamedAndRemoveUntil(Routes.LOGIN);
}
